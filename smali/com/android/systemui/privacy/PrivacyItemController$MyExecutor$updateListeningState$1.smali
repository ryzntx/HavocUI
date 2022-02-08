.class final Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor$updateListeningState$1;
.super Ljava/lang/Object;
.source "PrivacyItemController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;->updateListeningState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;


# direct methods
.method constructor <init>(Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor$updateListeningState$1;->this$0:Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 325
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor$updateListeningState$1;->this$0:Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;

    invoke-static {p0}, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;->access$getOuterClass$p(Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/privacy/PrivacyItemController;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/systemui/privacy/PrivacyItemController;->access$setListeningState(Lcom/android/systemui/privacy/PrivacyItemController;)V

    :cond_0
    return-void
.end method
