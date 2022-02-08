.class public final Lcom/android/systemui/privacy/PrivacyItemController$devicePropertiesChangedListener$1;
.super Ljava/lang/Object;
.source "PrivacyItemController.kt"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/privacy/PrivacyItemController;-><init>(Lcom/android/systemui/appops/AppOpsController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Ljava/util/concurrent/Executor;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/util/DeviceConfigProxy;Landroid/os/UserManager;Lcom/android/systemui/dump/DumpManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrivacyItemController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrivacyItemController.kt\ncom/android/systemui/privacy/PrivacyItemController$devicePropertiesChangedListener$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,337:1\n1591#2,2:338\n1591#2,2:340\n*E\n*S KotlinDebug\n*F\n+ 1 PrivacyItemController.kt\ncom/android/systemui/privacy/PrivacyItemController$devicePropertiesChangedListener$1\n*L\n122#1,2:338\n127#1,2:340\n*E\n"
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

    .line 113
    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController$devicePropertiesChangedListener$1;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 5
    .param p1    # Landroid/provider/DeviceConfig$Properties;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "properties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string v1, "privacy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 116
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string v1, "permissions_hub_2_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "camera_mic_icons_enabled"

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 120
    :cond_0
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 121
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController$devicePropertiesChangedListener$1;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-virtual {p1, v1, v3}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/privacy/PrivacyItemController;->access$setAllIndicatorsAvailable$p(Lcom/android/systemui/privacy/PrivacyItemController;Z)V

    .line 122
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController$devicePropertiesChangedListener$1;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-static {v0}, Lcom/android/systemui/privacy/PrivacyItemController;->access$getCallbacks$p(Lcom/android/systemui/privacy/PrivacyItemController;)Ljava/util/List;

    move-result-object v0

    .line 1591
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 122
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/systemui/privacy/PrivacyItemController$devicePropertiesChangedListener$1;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-virtual {v4}, Lcom/android/systemui/privacy/PrivacyItemController;->getAllIndicatorsAvailable()Z

    move-result v4

    invoke-interface {v1, v4}, Lcom/android/systemui/privacy/PrivacyItemController$Callback;->onFlagAllChanged(Z)V

    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 126
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController$devicePropertiesChangedListener$1;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-virtual {p1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/android/systemui/privacy/PrivacyItemController;->access$setMicCameraAvailable$p(Lcom/android/systemui/privacy/PrivacyItemController;Z)V

    .line 127
    iget-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController$devicePropertiesChangedListener$1;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-static {p1}, Lcom/android/systemui/privacy/PrivacyItemController;->access$getCallbacks$p(Lcom/android/systemui/privacy/PrivacyItemController;)Ljava/util/List;

    move-result-object p1

    .line 1591
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 127
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/privacy/PrivacyItemController$devicePropertiesChangedListener$1;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-virtual {v1}, Lcom/android/systemui/privacy/PrivacyItemController;->getMicCameraAvailable()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/privacy/PrivacyItemController$Callback;->onFlagMicCameraChanged(Z)V

    goto :goto_1

    .line 129
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController$devicePropertiesChangedListener$1;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-static {p0}, Lcom/android/systemui/privacy/PrivacyItemController;->access$getInternalUiExecutor$p(Lcom/android/systemui/privacy/PrivacyItemController;)Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;->updateListeningState()V

    :cond_5
    return-void
.end method
