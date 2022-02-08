.class public final Lcom/android/systemui/privacy/PrivacyItemController$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "PrivacyItemController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/privacy/PrivacyItemController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/privacy/PrivacyItemController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/privacy/PrivacyItemController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 276
    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController$Receiver;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    sget-object p1, Lcom/android/systemui/privacy/PrivacyItemController;->Companion:Lcom/android/systemui/privacy/PrivacyItemController$Companion;

    invoke-virtual {p1}, Lcom/android/systemui/privacy/PrivacyItemController$Companion;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 279
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController$Receiver;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/systemui/privacy/PrivacyItemController;->access$update(Lcom/android/systemui/privacy/PrivacyItemController;Z)V

    :cond_0
    return-void
.end method
