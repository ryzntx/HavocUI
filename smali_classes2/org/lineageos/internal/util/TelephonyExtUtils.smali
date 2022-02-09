.class public final Lorg/lineageos/internal/util/TelephonyExtUtils;
.super Ljava/lang/Object;
.source "TelephonyExtUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lineageos/internal/util/TelephonyExtUtils$1;,
        Lorg/lineageos/internal/util/TelephonyExtUtils$ProvisioningChangedListener;
    }
.end annotation


# static fields
.field private static sInstance:Lorg/lineageos/internal/util/TelephonyExtUtils;


# instance fields
.field private mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/lineageos/internal/util/TelephonyExtUtils$ProvisioningChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNoServiceAvailable:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -set0(Lorg/lineageos/internal/util/TelephonyExtUtils;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/lineageos/internal/util/TelephonyExtUtils;->mNoServiceAvailable:Z

    return p1
.end method

.method static synthetic -wrap0(Lorg/lineageos/internal/util/TelephonyExtUtils;)Lorg/codeaurora/internal/IExtTelephony;
    .locals 1

    invoke-direct {p0}, Lorg/lineageos/internal/util/TelephonyExtUtils;->getService()Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lorg/lineageos/internal/util/TelephonyExtUtils;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lineageos/internal/util/TelephonyExtUtils;->notifyListeners(IZ)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/lineageos/internal/util/TelephonyExtUtils;->mNoServiceAvailable:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/lineageos/internal/util/TelephonyExtUtils;->mListeners:Ljava/util/List;

    new-instance v1, Lorg/lineageos/internal/util/TelephonyExtUtils$1;

    invoke-direct {v1, p0}, Lorg/lineageos/internal/util/TelephonyExtUtils$1;-><init>(Lorg/lineageos/internal/util/TelephonyExtUtils;)V

    iput-object v1, p0, Lorg/lineageos/internal/util/TelephonyExtUtils;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "org.codeaurora.intent.action.ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/lineageos/internal/util/TelephonyExtUtils;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/lineageos/internal/util/TelephonyExtUtils;
    .locals 2

    sget-object v0, Lorg/lineageos/internal/util/TelephonyExtUtils;->sInstance:Lorg/lineageos/internal/util/TelephonyExtUtils;

    if-nez v0, :cond_0

    new-instance v0, Lorg/lineageos/internal/util/TelephonyExtUtils;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/lineageos/internal/util/TelephonyExtUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/lineageos/internal/util/TelephonyExtUtils;->sInstance:Lorg/lineageos/internal/util/TelephonyExtUtils;

    :cond_0
    sget-object v0, Lorg/lineageos/internal/util/TelephonyExtUtils;->sInstance:Lorg/lineageos/internal/util/TelephonyExtUtils;

    return-object v0
.end method

.method private getService()Lorg/codeaurora/internal/IExtTelephony;
    .locals 4

    const/4 v2, 0x0

    iget-boolean v1, p0, Lorg/lineageos/internal/util/TelephonyExtUtils;->mNoServiceAvailable:Z

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Lorg/lineageos/internal/util/TelephonyExtUtils;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/lineageos/internal/util/TelephonyExtUtils;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    return-object v1

    :cond_1
    const-class v2, Lorg/lineageos/internal/util/TelephonyExtUtils;

    monitor-enter v2

    :try_start_0
    const-string/jumbo v1, "extphone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/internal/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v1

    iput-object v1, p0, Lorg/lineageos/internal/util/TelephonyExtUtils;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    iget-object v1, p0, Lorg/lineageos/internal/util/TelephonyExtUtils;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    return-object v1

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "TelephonyExtUtils"

    const-string/jumbo v3, "Failed to get telephony extension service!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/lineageos/internal/util/TelephonyExtUtils;->mNoServiceAvailable:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private notifyListeners(IZ)V
    .locals 3

    iget-object v2, p0, Lorg/lineageos/internal/util/TelephonyExtUtils;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lineageos/internal/util/TelephonyExtUtils$ProvisioningChangedListener;

    invoke-interface {v0, p1, p2}, Lorg/lineageos/internal/util/TelephonyExtUtils$ProvisioningChangedListener;->onProvisioningChanged(IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lorg/lineageos/internal/util/TelephonyExtUtils$ProvisioningChangedListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/lineageos/internal/util/TelephonyExtUtils;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/lineageos/internal/util/TelephonyExtUtils;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getCurrentUiccCardProvisioningStatus(I)I
    .locals 6

    const/4 v5, -0x1

    invoke-direct {p0}, Lorg/lineageos/internal/util/TelephonyExtUtils;->getService()Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eq p1, v5, :cond_0

    :try_start_0
    iget-object v2, p0, Lorg/lineageos/internal/util/TelephonyExtUtils;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    invoke-interface {v2, p1}, Lorg/codeaurora/internal/IExtTelephony;->getCurrentUiccCardProvisioningStatus(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "TelephonyExtUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to get provisioning status for slotId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v5
.end method

.method public hasService()Z
    .locals 1

    invoke-direct {p0}, Lorg/lineageos/internal/util/TelephonyExtUtils;->getService()Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSlotProvisioned(I)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Lorg/lineageos/internal/util/TelephonyExtUtils;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSubProvisioned(I)Z
    .locals 1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/lineageos/internal/util/TelephonyExtUtils;->isSlotProvisioned(I)Z

    move-result v0

    return v0
.end method
