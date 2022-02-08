.class Lcom/google/android/systemui/assist/AssistManagerGoogle$3$1;
.super Ljava/lang/Object;
.source "AssistManagerGoogle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/assist/AssistManagerGoogle$3;->onAssistantPresenceChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/systemui/assist/AssistManagerGoogle$3;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/assist/AssistManagerGoogle$3;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle$3$1;->this$1:Lcom/google/android/systemui/assist/AssistManagerGoogle$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle$3$1;->this$1:Lcom/google/android/systemui/assist/AssistManagerGoogle$3;

    iget-object p0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle$3;->this$0:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    invoke-static {p0}, Lcom/google/android/systemui/assist/AssistManagerGoogle;->access$300(Lcom/google/android/systemui/assist/AssistManagerGoogle;)Lcom/android/systemui/assist/AssistManager$UiController;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/assist/AssistManager$UiController;->hide()V

    return-void
.end method
