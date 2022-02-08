.class public Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;
.super Ljava/lang/Object;
.source "AssistantPresenceHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler$AssistantPresenceChangeListener;
    }
.end annotation


# instance fields
.field private final mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field private final mAssistantPresenceChangeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler$AssistantPresenceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mGoogleIsAssistant:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/app/AssistUtils;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->mAssistantPresenceChangeListeners:Ljava/util/Set;

    .line 24
    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    return-void
.end method

.method private fetchIsGoogleAssistant()Z
    .locals 1

    .line 45
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 46
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.google.android.googlequicksearchbox/com.google.android.voiceinteraction.GsaVoiceInteractionService"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateAssistantPresence(Z)V
    .locals 2

    .line 36
    iget-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->mGoogleIsAssistant:Z

    if-eq v0, p1, :cond_0

    .line 37
    iput-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->mGoogleIsAssistant:Z

    .line 38
    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->mAssistantPresenceChangeListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler$AssistantPresenceChangeListener;

    .line 39
    iget-boolean v1, p0, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->mGoogleIsAssistant:Z

    invoke-interface {v0, v1}, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler$AssistantPresenceChangeListener;->onAssistantPresenceChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public registerAssistantPresenceChangeListener(Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler$AssistantPresenceChangeListener;)V
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->mAssistantPresenceChangeListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestAssistantPresenceUpdate()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->fetchIsGoogleAssistant()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->updateAssistantPresence(Z)V

    return-void
.end method
