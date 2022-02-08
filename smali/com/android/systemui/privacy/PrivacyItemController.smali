.class public final Lcom/android/systemui/privacy/PrivacyItemController;
.super Ljava/lang/Object;
.source "PrivacyItemController.kt"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/privacy/PrivacyItemController$Callback;,
        Lcom/android/systemui/privacy/PrivacyItemController$Receiver;,
        Lcom/android/systemui/privacy/PrivacyItemController$NotifyChangesToCallback;,
        Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;,
        Lcom/android/systemui/privacy/PrivacyItemController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrivacyItemController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrivacyItemController.kt\ncom/android/systemui/privacy/PrivacyItemController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,337:1\n1218#2,12:338\n1365#2,9:350\n1591#2,2:359\n1374#2:361\n1591#2,2:362\n1591#2,2:364\n*E\n*S KotlinDebug\n*F\n+ 1 PrivacyItemController.kt\ncom/android/systemui/privacy/PrivacyItemController\n*L\n245#1,12:338\n246#1,9:350\n246#1,2:359\n246#1:361\n298#1,2:362\n303#1,2:364\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/privacy/PrivacyItemController$Companion;

.field private static final OPS:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final OPS_LOCATION:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final OPS_MIC_CAMERA:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final intentFilter:Landroid/content/IntentFilter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private allIndicatorsAvailable:Z

.field private final appOpsController:Lcom/android/systemui/appops/AppOpsController;

.field private final bgExecutor:Ljava/util/concurrent/Executor;

.field private final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/privacy/PrivacyItemController$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final cb:Lcom/android/systemui/privacy/PrivacyItemController$cb$1;

.field private currentUserIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

.field private final devicePropertiesChangedListener:Lcom/android/systemui/privacy/PrivacyItemController$devicePropertiesChangedListener$1;

.field private final internalUiExecutor:Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;

.field private listening:Z

.field private micCameraAvailable:Z

.field private final notifyChanges:Ljava/lang/Runnable;

.field private privacyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final updateListAndNotifyChanges:Ljava/lang/Runnable;

.field private final userManager:Landroid/os/UserManager;

.field private userSwitcherReceiver:Lcom/android/systemui/privacy/PrivacyItemController$Receiver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/privacy/PrivacyItemController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/privacy/PrivacyItemController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/privacy/PrivacyItemController;->Companion:Lcom/android/systemui/privacy/PrivacyItemController$Companion;

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 59
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/privacy/PrivacyItemController;->OPS_MIC_CAMERA:[I

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 62
    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/systemui/privacy/PrivacyItemController;->OPS_LOCATION:[I

    .line 65
    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->plus([I[I)[I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/privacy/PrivacyItemController;->OPS:[I

    .line 66
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 67
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 69
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    sput-object v0, Lcom/android/systemui/privacy/PrivacyItemController;->intentFilter:Landroid/content/IntentFilter;

    return-void

    nop

    :array_0
    .array-data 4
        0x1a
        0x65
        0x1b
        0x64
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public constructor <init>(Lcom/android/systemui/appops/AppOpsController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Ljava/util/concurrent/Executor;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/util/DeviceConfigProxy;Landroid/os/UserManager;Lcom/android/systemui/dump/DumpManager;)V
    .locals 1
    .param p1    # Lcom/android/systemui/appops/AppOpsController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/util/concurrency/DelayableExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/broadcast/BroadcastDispatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/systemui/util/DeviceConfigProxy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroid/os/UserManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/android/systemui/dump/DumpManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "appOpsController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bgExecutor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "broadcastDispatcher"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceConfigProxy"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "userManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dumpManager"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->appOpsController:Lcom/android/systemui/appops/AppOpsController;

    iput-object p3, p0, Lcom/android/systemui/privacy/PrivacyItemController;->bgExecutor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/android/systemui/privacy/PrivacyItemController;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p5, p0, Lcom/android/systemui/privacy/PrivacyItemController;->deviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

    iput-object p6, p0, Lcom/android/systemui/privacy/PrivacyItemController;->userManager:Landroid/os/UserManager;

    .line 78
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->privacyList:Ljava/util/List;

    .line 92
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->currentUserIds:Ljava/util/List;

    .line 94
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    .line 95
    new-instance p1, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;

    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p1, p3, p2}, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;-><init>(Ljava/lang/ref/WeakReference;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->internalUiExecutor:Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;

    .line 97
    new-instance p1, Lcom/android/systemui/privacy/PrivacyItemController$notifyChanges$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/privacy/PrivacyItemController$notifyChanges$1;-><init>(Lcom/android/systemui/privacy/PrivacyItemController;)V

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->notifyChanges:Ljava/lang/Runnable;

    .line 102
    new-instance p1, Lcom/android/systemui/privacy/PrivacyItemController$updateListAndNotifyChanges$1;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/privacy/PrivacyItemController$updateListAndNotifyChanges$1;-><init>(Lcom/android/systemui/privacy/PrivacyItemController;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->updateListAndNotifyChanges:Ljava/lang/Runnable;

    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/privacy/PrivacyItemController;->isAllIndicatorsEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->allIndicatorsAvailable:Z

    .line 109
    invoke-direct {p0}, Lcom/android/systemui/privacy/PrivacyItemController;->isMicCameraEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->micCameraAvailable:Z

    .line 113
    new-instance p1, Lcom/android/systemui/privacy/PrivacyItemController$devicePropertiesChangedListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/privacy/PrivacyItemController$devicePropertiesChangedListener$1;-><init>(Lcom/android/systemui/privacy/PrivacyItemController;)V

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->devicePropertiesChangedListener:Lcom/android/systemui/privacy/PrivacyItemController$devicePropertiesChangedListener$1;

    .line 134
    new-instance p1, Lcom/android/systemui/privacy/PrivacyItemController$cb$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/privacy/PrivacyItemController$cb$1;-><init>(Lcom/android/systemui/privacy/PrivacyItemController;)V

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->cb:Lcom/android/systemui/privacy/PrivacyItemController$cb$1;

    .line 153
    new-instance p1, Lcom/android/systemui/privacy/PrivacyItemController$Receiver;

    invoke-direct {p1, p0}, Lcom/android/systemui/privacy/PrivacyItemController$Receiver;-><init>(Lcom/android/systemui/privacy/PrivacyItemController;)V

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->userSwitcherReceiver:Lcom/android/systemui/privacy/PrivacyItemController$Receiver;

    .line 161
    iget-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->deviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

    .line 164
    iget-object p3, p0, Lcom/android/systemui/privacy/PrivacyItemController;->devicePropertiesChangedListener:Lcom/android/systemui/privacy/PrivacyItemController$devicePropertiesChangedListener$1;

    const-string p4, "privacy"

    .line 161
    invoke-virtual {p1, p4, p2, p3}, Lcom/android/systemui/util/DeviceConfigProxy;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    const-string p1, "PrivacyItemController"

    .line 165
    invoke-virtual {p7, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method

.method public static final synthetic access$addCallback(Lcom/android/systemui/privacy/PrivacyItemController;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/android/systemui/privacy/PrivacyItemController;->addCallback(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method public static final synthetic access$getCallbacks$p(Lcom/android/systemui/privacy/PrivacyItemController;)Ljava/util/List;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getCurrentUserIds$p(Lcom/android/systemui/privacy/PrivacyItemController;)Ljava/util/List;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->currentUserIds:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getIntentFilter$cp()Landroid/content/IntentFilter;
    .locals 1

    .line 47
    sget-object v0, Lcom/android/systemui/privacy/PrivacyItemController;->intentFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public static final synthetic access$getInternalUiExecutor$p(Lcom/android/systemui/privacy/PrivacyItemController;)Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->internalUiExecutor:Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;

    return-object p0
.end method

.method public static final synthetic access$getNotifyChanges$p(Lcom/android/systemui/privacy/PrivacyItemController;)Ljava/lang/Runnable;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->notifyChanges:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getOPS_LOCATION$cp()[I
    .locals 1

    .line 47
    sget-object v0, Lcom/android/systemui/privacy/PrivacyItemController;->OPS_LOCATION:[I

    return-object v0
.end method

.method public static final synthetic access$getUpdateListAndNotifyChanges$p(Lcom/android/systemui/privacy/PrivacyItemController;)Ljava/lang/Runnable;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->updateListAndNotifyChanges:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getUserManager$p(Lcom/android/systemui/privacy/PrivacyItemController;)Landroid/os/UserManager;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->userManager:Landroid/os/UserManager;

    return-object p0
.end method

.method public static final synthetic access$removeCallback(Lcom/android/systemui/privacy/PrivacyItemController;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/android/systemui/privacy/PrivacyItemController;->removeCallback(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method public static final synthetic access$setAllIndicatorsAvailable$p(Lcom/android/systemui/privacy/PrivacyItemController;Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->allIndicatorsAvailable:Z

    return-void
.end method

.method public static final synthetic access$setCurrentUserIds$p(Lcom/android/systemui/privacy/PrivacyItemController;Ljava/util/List;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->currentUserIds:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setListeningState(Lcom/android/systemui/privacy/PrivacyItemController;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/systemui/privacy/PrivacyItemController;->setListeningState()V

    return-void
.end method

.method public static final synthetic access$setMicCameraAvailable$p(Lcom/android/systemui/privacy/PrivacyItemController;Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->micCameraAvailable:Z

    return-void
.end method

.method public static final synthetic access$update(Lcom/android/systemui/privacy/PrivacyItemController;Z)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/android/systemui/privacy/PrivacyItemController;->update(Z)V

    return-void
.end method

.method public static final synthetic access$updatePrivacyList(Lcom/android/systemui/privacy/PrivacyItemController;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/systemui/privacy/PrivacyItemController;->updatePrivacyList()V

    return-void
.end method

.method private final addCallback(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/privacy/PrivacyItemController$Callback;",
            ">;)V"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->listening:Z

    if-nez v0, :cond_0

    .line 216
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->internalUiExecutor:Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;

    invoke-virtual {p0}, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;->updateListeningState()V

    goto :goto_0

    .line 219
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->listening:Z

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->internalUiExecutor:Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;

    new-instance v1, Lcom/android/systemui/privacy/PrivacyItemController$NotifyChangesToCallback;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    invoke-virtual {p0}, Lcom/android/systemui/privacy/PrivacyItemController;->getPrivacyList$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/privacy/PrivacyItemController$NotifyChangesToCallback;-><init>(Lcom/android/systemui/privacy/PrivacyItemController$Callback;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final isMicCameraEnabled()Z
    .locals 3

    .line 88
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->deviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

    const-string v0, "privacy"

    const-string v1, "camera_mic_icons_enabled"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/util/DeviceConfigProxy;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic privacyList$annotations()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private final registerReceiver()V
    .locals 4

    .line 173
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->userSwitcherReceiver:Lcom/android/systemui/privacy/PrivacyItemController$Receiver;

    sget-object v1, Lcom/android/systemui/privacy/PrivacyItemController;->intentFilter:Landroid/content/IntentFilter;

    .line 174
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "UserHandle.ALL"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 173
    invoke-virtual {v0, p0, v1, v3, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    return-void
.end method

.method private final removeCallback(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/privacy/PrivacyItemController$Callback;",
            ">;)V"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/privacy/PrivacyItemController$removeCallback$1;

    invoke-direct {v1, p1}, Lcom/android/systemui/privacy/PrivacyItemController$removeCallback$1;-><init>(Ljava/lang/ref/WeakReference;)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 227
    iget-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 228
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->internalUiExecutor:Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;

    invoke-virtual {p0}, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;->updateListeningState()V

    :cond_0
    return-void
.end method

.method private final setListeningState()V
    .locals 4

    .line 197
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/systemui/privacy/PrivacyItemController;->allIndicatorsAvailable:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/privacy/PrivacyItemController;->micCameraAvailable:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    and-int/2addr v0, v2

    .line 198
    iget-boolean v2, p0, Lcom/android/systemui/privacy/PrivacyItemController;->listening:Z

    if-ne v2, v0, :cond_2

    return-void

    .line 199
    :cond_2
    iput-boolean v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->listening:Z

    if-eqz v0, :cond_3

    .line 201
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->appOpsController:Lcom/android/systemui/appops/AppOpsController;

    sget-object v2, Lcom/android/systemui/privacy/PrivacyItemController;->OPS:[I

    iget-object v3, p0, Lcom/android/systemui/privacy/PrivacyItemController;->cb:Lcom/android/systemui/privacy/PrivacyItemController$cb$1;

    invoke-interface {v0, v2, v3}, Lcom/android/systemui/appops/AppOpsController;->addCallback([ILcom/android/systemui/appops/AppOpsController$Callback;)V

    .line 202
    invoke-direct {p0}, Lcom/android/systemui/privacy/PrivacyItemController;->registerReceiver()V

    .line 203
    invoke-direct {p0, v1}, Lcom/android/systemui/privacy/PrivacyItemController;->update(Z)V

    goto :goto_2

    .line 205
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->appOpsController:Lcom/android/systemui/appops/AppOpsController;

    sget-object v1, Lcom/android/systemui/privacy/PrivacyItemController;->OPS:[I

    iget-object v2, p0, Lcom/android/systemui/privacy/PrivacyItemController;->cb:Lcom/android/systemui/privacy/PrivacyItemController$cb$1;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/appops/AppOpsController;->removeCallback([ILcom/android/systemui/appops/AppOpsController$Callback;)V

    .line 206
    invoke-direct {p0}, Lcom/android/systemui/privacy/PrivacyItemController;->unregisterReceiver()V

    .line 209
    invoke-direct {p0, v3}, Lcom/android/systemui/privacy/PrivacyItemController;->update(Z)V

    :goto_2
    return-void
.end method

.method private final toPrivacyItem(Lcom/android/systemui/appops/AppOpItem;)Lcom/android/systemui/privacy/PrivacyItem;
    .locals 3

    .line 251
    invoke-virtual {p1}, Lcom/android/systemui/appops/AppOpItem;->getCode()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/16 v2, 0x1a

    if-eq v0, v2, :cond_1

    const/16 v2, 0x1b

    if-eq v0, v2, :cond_0

    const/16 v2, 0x64

    if-eq v0, v2, :cond_0

    const/16 v2, 0x65

    if-eq v0, v2, :cond_1

    return-object v1

    .line 257
    :cond_0
    sget-object v0, Lcom/android/systemui/privacy/PrivacyType;->TYPE_MICROPHONE:Lcom/android/systemui/privacy/PrivacyType;

    goto :goto_0

    .line 253
    :cond_1
    sget-object v0, Lcom/android/systemui/privacy/PrivacyType;->TYPE_CAMERA:Lcom/android/systemui/privacy/PrivacyType;

    goto :goto_0

    .line 255
    :cond_2
    sget-object v0, Lcom/android/systemui/privacy/PrivacyType;->TYPE_LOCATION:Lcom/android/systemui/privacy/PrivacyType;

    .line 260
    :goto_0
    sget-object v2, Lcom/android/systemui/privacy/PrivacyType;->TYPE_LOCATION:Lcom/android/systemui/privacy/PrivacyType;

    if-ne v0, v2, :cond_3

    iget-boolean p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->allIndicatorsAvailable:Z

    if-nez p0, :cond_3

    return-object v1

    .line 261
    :cond_3
    new-instance p0, Lcom/android/systemui/privacy/PrivacyApplication;

    invoke-virtual {p1}, Lcom/android/systemui/appops/AppOpItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appOpItem.packageName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/systemui/appops/AppOpItem;->getUid()I

    move-result p1

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/privacy/PrivacyApplication;-><init>(Ljava/lang/String;I)V

    .line 262
    new-instance p1, Lcom/android/systemui/privacy/PrivacyItem;

    invoke-direct {p1, v0, p0}, Lcom/android/systemui/privacy/PrivacyItem;-><init>(Lcom/android/systemui/privacy/PrivacyType;Lcom/android/systemui/privacy/PrivacyApplication;)V

    return-object p1
.end method

.method private final unregisterReceiver()V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->userSwitcherReceiver:Lcom/android/systemui/privacy/PrivacyItemController$Receiver;

    invoke-virtual {v0, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private final update(Z)V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->bgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/privacy/PrivacyItemController$update$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/privacy/PrivacyItemController$update$1;-><init>(Lcom/android/systemui/privacy/PrivacyItemController;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final updatePrivacyList()V
    .locals 4

    .line 241
    iget-boolean v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->listening:Z

    if-nez v0, :cond_0

    .line 242
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->privacyList:Ljava/util/List;

    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->currentUserIds:Ljava/util/List;

    .line 1218
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1225
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1226
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 245
    iget-object v3, p0, Lcom/android/systemui/privacy/PrivacyItemController;->appOpsController:Lcom/android/systemui/appops/AppOpsController;

    invoke-interface {v3, v2}, Lcom/android/systemui/appops/AppOpsController;->getActiveAppOpsForUser(I)Ljava/util/List;

    move-result-object v2

    .line 1227
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 1365
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1591
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1373
    check-cast v2, Lcom/android/systemui/appops/AppOpItem;

    const-string v3, "it"

    .line 246
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/systemui/privacy/PrivacyItemController;->toPrivacyItem(Lcom/android/systemui/appops/AppOpItem;)Lcom/android/systemui/privacy/PrivacyItem;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1373
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 246
    :cond_3
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 247
    iput-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->privacyList:Ljava/util/List;

    return-void
.end method

.method public static synthetic userSwitcherReceiver$annotations()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    return-void
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/privacy/PrivacyItemController$Callback;)V
    .locals 1
    .param p1    # Lcom/android/systemui/privacy/PrivacyItemController$Callback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->internalUiExecutor:Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;

    invoke-virtual {p0, p1}, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;->addCallback(Lcom/android/systemui/privacy/PrivacyItemController$Callback;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/io/FileDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/PrintWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "pw"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "args"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "PrivacyItemController state:"

    .line 294
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Listening: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/privacy/PrivacyItemController;->listening:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 296
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Current user ids: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/privacy/PrivacyItemController;->currentUserIds:Ljava/util/List;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  Privacy Items:"

    .line 297
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Lcom/android/systemui/privacy/PrivacyItemController;->getPrivacyList$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Ljava/util/List;

    move-result-object p1

    .line 1591
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const-string v0, "    "

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/privacy/PrivacyItem;

    .line 299
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p3}, Lcom/android/systemui/privacy/PrivacyItem;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "  Callbacks:"

    .line 302
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 303
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    .line 1591
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 304
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    if-eqz p1, :cond_1

    .line 305
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final getAllIndicatorsAvailable()Z
    .locals 0

    .line 107
    iget-boolean p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->allIndicatorsAvailable:Z

    return p0
.end method

.method public final getMicCameraAvailable()Z
    .locals 0

    .line 109
    iget-boolean p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->micCameraAvailable:Z

    return p0
.end method

.method public final declared-synchronized getPrivacyList$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->privacyList:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isAllIndicatorsEnabled()Z
    .locals 3

    .line 83
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->deviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

    const-string v0, "privacy"

    const-string v1, "permissions_hub_2_enabled"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/util/DeviceConfigProxy;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final removeCallback(Lcom/android/systemui/privacy/PrivacyItemController$Callback;)V
    .locals 1
    .param p1    # Lcom/android/systemui/privacy/PrivacyItemController$Callback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->internalUiExecutor:Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;

    invoke-virtual {p0, p1}, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;->removeCallback(Lcom/android/systemui/privacy/PrivacyItemController$Callback;)V

    return-void
.end method
