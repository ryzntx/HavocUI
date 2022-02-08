.class public Lcom/google/android/systemui/smartspace/SmartSpaceController;
.super Ljava/lang/Object;
.source "SmartSpaceController.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/smartspace/SmartSpaceController$UserSwitchReceiver;
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mAlarmRegistered:Z

.field private final mAppContext:Landroid/content/Context;

.field private final mBackgroundHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public final mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

.field private final mExpireAlarmAction:Landroid/app/AlarmManager$OnAlarmListener;

.field private mHidePrivateData:Z

.field private mHideWorkData:Z

.field private final mKeyguardMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSmartSpaceEnabledBroadcastSent:Z

.field private final mStore:Lcom/google/android/systemui/smartspace/ProtoStore;

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "SmartSpaceController"

    const/4 v1, 0x3

    .line 33
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;Landroid/app/AlarmManager;Lcom/android/systemui/dump/DumpManager;)V
    .locals 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/google/android/systemui/smartspace/SmartSpaceController$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController$1;-><init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;)V

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mExpireAlarmAction:Landroid/app/AlarmManager$OnAlarmListener;

    .line 49
    new-instance v0, Lcom/google/android/systemui/smartspace/SmartSpaceController$2;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController$2;-><init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;)V

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mKeyguardMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mListeners:Ljava/util/ArrayList;

    .line 86
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mContext:Landroid/content/Context;

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mUiHandler:Landroid/os/Handler;

    .line 88
    new-instance v0, Lcom/google/android/systemui/smartspace/ProtoStore;

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/systemui/smartspace/ProtoStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mStore:Lcom/google/android/systemui/smartspace/ProtoStore;

    .line 89
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "smartspace-background"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 90
    iput-object p3, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mBackgroundHandler:Landroid/os/Handler;

    .line 91
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p3

    iput p3, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mCurrentUserId:I

    .line 92
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mAppContext:Landroid/content/Context;

    .line 93
    iput-object p4, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 94
    new-instance p3, Lcom/google/android/systemui/smartspace/SmartSpaceData;

    invoke-direct {p3}, Lcom/google/android/systemui/smartspace/SmartSpaceData;-><init>()V

    iput-object p3, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    .line 95
    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->isSmartSpaceDisabledByExperiments()Z

    move-result p3

    if-nez p3, :cond_0

    .line 96
    iget-object p3, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mKeyguardMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 97
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->reloadData()V

    .line 98
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->onGsaChanged()V

    .line 99
    new-instance p2, Lcom/google/android/systemui/smartspace/SmartSpaceController$3;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController$3;-><init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;)V

    const-string p3, "android.intent.action.PACKAGE_ADDED"

    const-string p4, "android.intent.action.PACKAGE_CHANGED"

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    const-string v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    filled-new-array {p3, p4, v0, v1}, [Ljava/lang/String;

    move-result-object p3

    .line 103
    invoke-static {p3}, Lcom/google/android/systemui/smartspace/GSAIntents;->getGsaPackageFilter([Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object p3

    .line 99
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 104
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "android.intent.action.USER_SWITCHED"

    .line 105
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.intent.action.USER_UNLOCKED"

    .line 106
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    new-instance p3, Lcom/google/android/systemui/smartspace/SmartSpaceController$UserSwitchReceiver;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/google/android/systemui/smartspace/SmartSpaceController$UserSwitchReceiver;-><init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;Lcom/google/android/systemui/smartspace/SmartSpaceController$1;)V

    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 108
    new-instance p2, Lcom/google/android/systemui/smartspace/SmartSpaceBroadcastReceiver;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/smartspace/SmartSpaceBroadcastReceiver;-><init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;)V

    new-instance p3, Landroid/content/IntentFilter;

    const-string p4, "com.google.android.apps.nexuslauncher.UPDATE_SMARTSPACE"

    invoke-direct {p3, p4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mUiHandler:Landroid/os/Handler;

    const-string v0, "android.permission.CAPTURE_AUDIO_HOTWORD"

    invoke-virtual {p1, p2, p3, v0, p4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 109
    const-class p1, Lcom/google/android/systemui/smartspace/SmartSpaceController;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/systemui/smartspace/SmartSpaceController;)Landroid/content/Context;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/systemui/smartspace/SmartSpaceController;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mHidePrivateData:Z

    return p0
.end method

.method static synthetic access$300(Lcom/google/android/systemui/smartspace/SmartSpaceController;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mHideWorkData:Z

    return p0
.end method

.method static synthetic access$400(Lcom/google/android/systemui/smartspace/SmartSpaceController;)Lcom/google/android/systemui/smartspace/ProtoStore;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mStore:Lcom/google/android/systemui/smartspace/ProtoStore;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/systemui/smartspace/SmartSpaceController;)Landroid/os/Handler;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mUiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private clearStore()V
    .locals 4

    .line 182
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mStore:Lcom/google/android/systemui/smartspace/ProtoStore;

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smartspace_"

    .line 185
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    iget v3, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mCurrentUserId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_true"

    .line 187
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/google/android/systemui/smartspace/ProtoStore;->store(Lcom/google/protobuf/nano/MessageNano;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mStore:Lcom/google/android/systemui/smartspace/ProtoStore;

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    iget p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mCurrentUserId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "_false"

    .line 193
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Lcom/google/android/systemui/smartspace/ProtoStore;->store(Lcom/google/protobuf/nano/MessageNano;Ljava/lang/String;)V

    return-void
.end method

.method private isSmartSpaceDisabledByExperiments()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private loadSmartSpaceData(Z)Lcom/google/android/systemui/smartspace/SmartSpaceCard;
    .locals 4

    .line 114
    new-instance v0, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;

    invoke-direct {v0}, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;-><init>()V

    .line 115
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mStore:Lcom/google/android/systemui/smartspace/ProtoStore;

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smartspace_"

    .line 117
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget v3, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    .line 119
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/systemui/smartspace/ProtoStore;->load(Ljava/lang/String;Lcom/google/protobuf/nano/MessageNano;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mContext:Landroid/content/Context;

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, v0, p1}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->fromWrapper(Landroid/content/Context;Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;Z)Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public addListener(Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;)V
    .locals 1

    .line 314
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 315
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 318
    invoke-interface {p1, v0}, Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;->onSmartSpaceUpdated(Lcom/google/android/systemui/smartspace/SmartSpaceData;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 321
    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mHidePrivateData:Z

    iget-boolean p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mHideWorkData:Z

    invoke-interface {p1, v0, p0}, Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;->onSensitiveModeChanged(ZZ)V

    :cond_1
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 282
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "SmartspaceController"

    .line 283
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 284
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  initial broadcast: "

    .line 285
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    iget-boolean p3, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mSmartSpaceEnabledBroadcastSent:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 288
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  weather "

    .line 290
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    iget-object v0, v0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 293
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  current "

    .line 295
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    iget-object v1, v1, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mCurrentCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "serialized:"

    .line 298
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p3, 0x0

    .line 301
    invoke-direct {p0, p3}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->loadSmartSpaceData(Z)Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 303
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p3, 0x1

    .line 305
    invoke-direct {p0, p3}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->loadSmartSpaceData(Z)Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 307
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "disabled by experiment: "

    .line 308
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->isSmartSpaceDisabledByExperiments()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onExpire(Z)V
    .locals 1

    .line 228
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    const/4 v0, 0x0

    .line 229
    iput-boolean v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mAlarmRegistered:Z

    .line 231
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->handleExpire()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    sget-boolean p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "SmartSpaceController"

    const-string p1, "onExpire - cancelled"

    .line 234
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 232
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->update()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onGsaChanged()V
    .locals 3

    .line 257
    sget-boolean v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SmartSpaceController"

    const-string v1, "onGsaChanged"

    .line 258
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mAppContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.systemui.smartspace.ENABLE_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.googlequicksearchbox"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x1

    .line 262
    iput-boolean v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mSmartSpaceEnabledBroadcastSent:Z

    .line 264
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p0, 0x0

    .line 265
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p0, v1, :cond_2

    .line 266
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;

    invoke-interface {v1}, Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;->onGsaChanged()V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onNewCard(Lcom/google/android/systemui/smartspace/NewCardInfo;)V
    .locals 3

    .line 129
    sget-boolean v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->DEBUG:Z

    const-string v1, "SmartSpaceController"

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewCard: "

    .line 131
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_3

    .line 136
    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/NewCardInfo;->getUserId()I

    move-result v0

    iget v2, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mCurrentUserId:I

    if-eq v0, v2, :cond_2

    .line 137
    sget-boolean p1, Lcom/google/android/systemui/smartspace/SmartSpaceController;->DEBUG:Z

    if-eqz p1, :cond_1

    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignore card that belongs to another user target: "

    .line 139
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mCurrentUserId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " current: "

    .line 141
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    iget p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mCurrentUserId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/systemui/smartspace/SmartSpaceController$4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/systemui/smartspace/SmartSpaceController$4;-><init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;Lcom/google/android/systemui/smartspace/NewCardInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public reloadData()V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->loadSmartSpaceData(Z)Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mCurrentCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    .line 272
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->loadSmartSpaceData(Z)Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    .line 273
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->update()V

    return-void
.end method

.method public removeListener(Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;)V
    .locals 0

    .line 326
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 327
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setHideSensitiveData(ZZ)V
    .locals 4

    .line 239
    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mHidePrivateData:Z

    if-eq v0, p1, :cond_4

    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mHideWorkData:Z

    if-eq v0, p2, :cond_4

    .line 240
    iput-boolean p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mHidePrivateData:Z

    .line 241
    iput-boolean p2, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mHideWorkData:Z

    .line 242
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mListeners:Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p2, 0x0

    move v0, p2

    .line 243
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 244
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;

    iget-boolean v2, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mHidePrivateData:Z

    iget-boolean v3, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mHideWorkData:Z

    invoke-interface {v1, v2, v3}, Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;->onSensitiveModeChanged(ZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->getCurrentCard()Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 247
    iget-boolean p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mHidePrivateData:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->getCurrentCard()Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->isWorkProfile()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-boolean p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mHideWorkData:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    .line 248
    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->getCurrentCard()Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->isWorkProfile()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 p2, 0x1

    :cond_3
    if-eqz p2, :cond_4

    .line 250
    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->clearStore()V

    :cond_4
    return-void
.end method

.method public update()V
    .locals 10

    .line 198
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 200
    sget-boolean v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->DEBUG:Z

    const-string v1, "SmartSpaceController"

    if-eqz v0, :cond_0

    const-string v0, "update"

    .line 201
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mAlarmRegistered:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mExpireAlarmAction:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 205
    iput-boolean v2, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mAlarmRegistered:Z

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->getExpiresAtMillis()J

    move-result-wide v5

    const-wide/16 v3, 0x0

    cmp-long v0, v5, v3

    if-lez v0, :cond_2

    .line 209
    iget-object v3, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x0

    iget-object v8, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mExpireAlarmAction:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v9, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mUiHandler:Landroid/os/Handler;

    const-string v7, "SmartSpace"

    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    const/4 v0, 0x1

    .line 210
    iput-boolean v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mAlarmRegistered:Z

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 213
    sget-boolean v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifying listeners data="

    .line 215
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    iget-object v3, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 220
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_4

    .line 222
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;

    iget-object v4, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    invoke-interface {v3, v4}, Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;->onSmartSpaceUpdated(Lcom/google/android/systemui/smartspace/SmartSpaceData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
