.class public final Lcom/android/systemui/privacy/PrivacyItemController$cb$1;
.super Ljava/lang/Object;
.source "PrivacyItemController.kt"

# interfaces
.implements Lcom/android/systemui/appops/AppOpsController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/privacy/PrivacyItemController;-><init>(Lcom/android/systemui/appops/AppOpsController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Ljava/util/concurrent/Executor;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/util/DeviceConfigProxy;Landroid/os/UserManager;Lcom/android/systemui/dump/DumpManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/privacy/PrivacyItemController;


# direct methods
.method constructor <init>(Lcom/android/systemui/privacy/PrivacyItemController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController$cb$1;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActiveStateChanged(IILjava/lang/String;Z)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p4, "packageName"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iget-object p3, p0, Lcom/android/systemui/privacy/PrivacyItemController$cb$1;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-virtual {p3}, Lcom/android/systemui/privacy/PrivacyItemController;->getAllIndicatorsAvailable()Z

    move-result p3

    if-nez p3, :cond_0

    sget-object p3, Lcom/android/systemui/privacy/PrivacyItemController;->Companion:Lcom/android/systemui/privacy/PrivacyItemController$Companion;

    invoke-virtual {p3}, Lcom/android/systemui/privacy/PrivacyItemController$Companion;->getOPS_LOCATION()[I

    move-result-object p3

    invoke-static {p3, p1}, Lkotlin/collections/ArraysKt;->contains([II)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 145
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 146
    iget-object p2, p0, Lcom/android/systemui/privacy/PrivacyItemController$cb$1;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-static {p2}, Lcom/android/systemui/privacy/PrivacyItemController;->access$getCurrentUserIds$p(Lcom/android/systemui/privacy/PrivacyItemController;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 147
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController$cb$1;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/privacy/PrivacyItemController;->access$update(Lcom/android/systemui/privacy/PrivacyItemController;Z)V

    :cond_1
    return-void
.end method
