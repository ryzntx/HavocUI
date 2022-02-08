.class Lcom/google/android/systemui/assist/AssistManagerGoogle$4$1;
.super Ljava/lang/Object;
.source "AssistManagerGoogle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/assist/AssistManagerGoogle$4;->onSetUiHints(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/systemui/assist/AssistManagerGoogle$4;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/assist/AssistManagerGoogle$4;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle$4$1;->this$1:Lcom/google/android/systemui/assist/AssistManagerGoogle$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle$4$1;->this$1:Lcom/google/android/systemui/assist/AssistManagerGoogle$4;

    iget-object v0, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle$4;->this$0:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    invoke-static {v0}, Lcom/google/android/systemui/assist/AssistManagerGoogle;->access$1000(Lcom/google/android/systemui/assist/AssistManagerGoogle;)Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->requestAssistantPresenceUpdate()V

    .line 142
    iget-object p0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle$4$1;->this$1:Lcom/google/android/systemui/assist/AssistManagerGoogle$4;

    iget-object p0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle$4;->this$0:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/systemui/assist/AssistManagerGoogle;->access$502(Lcom/google/android/systemui/assist/AssistManagerGoogle;Z)Z

    return-void
.end method
