.class public Lcom/android/systemui/statusbar/policy/TaskHelper;
.super Ljava/lang/Object;
.source "TaskHelper.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/TaskHelper$Injector;,
        Lcom/android/systemui/statusbar/policy/TaskHelper$TaskHelperHandler;,
        Lcom/android/systemui/statusbar/policy/TaskHelper$Callback;
    }
.end annotation


# static fields
.field private static final DEFAULT_HOME_CHANGE_ACTIONS:[Ljava/lang/String;


# instance fields
.field private mActivityTaskManager:Landroid/app/IActivityTaskManager;

.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/policy/TaskHelper$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDefaultHome:Landroid/content/ComponentName;

.field private final mDefaultHomeBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mForegroundAppPackageName:Ljava/lang/String;

.field private mHandler:Lcom/android/systemui/statusbar/policy/TaskHelper$TaskHelperHandler;

.field private final mInjector:Lcom/android/systemui/statusbar/policy/TaskHelper$Injector;

.field private mKeyguardShowing:Z

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private mPm:Landroid/content/pm/PackageManager;

.field private final mRecentsComponentName:Landroid/content/ComponentName;

.field private mRunningTaskId:I

.field private mTaskComponentName:Landroid/content/ComponentName;

.field private final mTaskStackChangeListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    .line 69
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/TaskHelper;->DEFAULT_HOME_CHANGE_ACTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/TaskHelper;->mCallbacks:Ljava/util/List;

    .line 94
    new-instance v0, Lcom/android/systemui/statusbar/policy/TaskHelper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/TaskHelper$1;-><init>(Lcom/android/systemui/statusbar/policy/TaskHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/TaskHelper;->mDefaultHomeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 101
    new-instance v0, Lcom/android/systemui/statusbar/policy/TaskHelper$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/TaskHelper$2;-><init>(Lcom/android/systemui/statusbar/policy/TaskHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/TaskHelper;->mTaskStackChangeListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 163
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/TaskHelper;->mContext:Landroid/content/Context;

    .line 164
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/TaskHelper;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 165
    new-instance v0, Lcom/android/systemui/statusbar/policy/TaskHelper$Injector;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/TaskHelper$Injector;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/TaskHelper;->mInjector:Lcom/android/systemui/statusbar/policy/TaskHelper$Injector;

    .line 166
    new-instance v0, Lcom/android/systemui/statusbar/policy/TaskHelper$TaskHelperHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/TaskHelper$TaskHelperHandler;-><init>(Lcom/android/systemui/statusbar/policy/TaskHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/TaskHelper;->mHandler:Lcom/android/systemui/statusbar/policy/TaskHelper$TaskHelperHandler;

    .line 167
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 168
    sget-object v1, Lcom/android/systemui/statusbar/policy/TaskHelper;->DEFAULT_HOME_CHANGE_ACTIONS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 169
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/TaskHelper;->getCurrentDefaultHome()Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/TaskHelper;->mDefaultHome:Landroid/content/ComponentName;

    const v1, 0x1040261

    .line 172
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/TaskHelper;->mRecentsComponentName:Landroid/content/ComponentName;

    .line 174
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/TaskHelper;->mDefaultHomeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 175
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/TaskHelper;->mTaskStackChangeListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 176
    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 177
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/TaskHelper;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 178
    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/TaskHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 180
    const-class p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 181
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/TaskHelper;->updateForegroundApp()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/TaskHelper;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/TaskHelper;->mDefaultHome:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/TaskHelper;)Landroid/content/ComponentName;
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/TaskHelper;->getCurrentDefaultHome()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/TaskHelper;)Lcom/android/systemui/statusbar/policy/TaskHelper$TaskHelperHandler;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/TaskHelper;->mHandler:Lcom/android/systemui/statusbar/policy/TaskHelper$TaskHelperHandler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/TaskHelper;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/TaskHelper;->updateForegroundApp()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/TaskHelper;Z)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/TaskHelper;->updateCallbacks(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/TaskHelper;)Landroid/content/ComponentName;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/TaskHelper;->mTaskComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/policy/TaskHelper;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/TaskHelper;->mTaskComponentName:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/TaskHelper;)Landroid/app/IActivityTaskManager;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/TaskHelper;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/policy/TaskHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/TaskHelper;->mForegroundAppPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/policy/TaskHelper;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/android/systemui/statusbar/policy/TaskHelper;->mRunningTaskId:I

    return p1
.end method

.method private getCurrentDefaultHome()Landroid/content/ComponentName;
    .locals 5

    .line 199
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    invoke-static {}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/PackageManagerWrapper;

    move-result-object v0

    .line 201
    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/high16 v0, -0x80000000

    .line 208
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    move-object v2, v1

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 209
    iget v4, v3, Landroid/content/pm/ResolveInfo;->priority:I

    if-le v4, v0, :cond_2

    .line 210
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    .line 211
    iget v0, v3, Landroid/content/pm/ResolveInfo;->priority:I

    goto :goto_1

    :cond_2
    if-ne v4, v0, :cond_1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method private static isLockTaskOn()Z
    .locals 1

    .line 313
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private isPackageLiveWalls(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 294
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/TaskHelper;->mPm:Landroid/content/pm/PackageManager;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.service.wallpaper.WallpaperService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x80

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 300
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 301
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_2

    .line 302
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 303
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method

.method static synthetic lambda$updateCallbacks$0(ZLcom/android/systemui/statusbar/policy/TaskHelper$Callback;)V
    .locals 0

    .line 194
    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/TaskHelper$Callback;->onHomeVisibilityChanged(Z)V

    return-void
.end method

.method private updateCallbacks(Z)V
    .locals 1

    .line 193
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/TaskHelper;->mCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/statusbar/policy/-$$Lambda$TaskHelper$y_c7G-gWyoZDc-SiD4AsmOITwQs;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/policy/-$$Lambda$TaskHelper$y_c7G-gWyoZDc-SiD4AsmOITwQs;-><init>(Z)V

    .line 194
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateForegroundApp()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/TaskHelper;->mInjector:Lcom/android/systemui/statusbar/policy/TaskHelper$Injector;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/TaskHelper$Injector;->getBackgroundThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/policy/TaskHelper$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/TaskHelper$3;-><init>(Lcom/android/systemui/statusbar/policy/TaskHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getForegroundAppLabel()Ljava/lang/String;
    .locals 3

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/TaskHelper;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/TaskHelper;->mTaskComponentName:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/TaskHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 277
    invoke-virtual {v0, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isLauncherShowing()Z
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/TaskHelper;->mTaskComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/TaskHelper;->mDefaultHome:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/TaskHelper;->mDefaultHome:Landroid/content/ComponentName;

    if-eqz p0, :cond_2

    .line 287
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.settings"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public killForegroundApp()V
    .locals 5

    .line 221
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/TaskHelper;->isLauncherShowing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/TaskHelper;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.FORCE_STOP_PACKAGES"

    .line 222
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 224
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TaskHelper;->isLockTaskOn()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/TaskHelper;->mKeyguardShowing:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/TaskHelper;->mTaskComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/TaskHelper;->mRecentsComponentName:Landroid/content/ComponentName;

    .line 227
    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/TaskHelper;->mForegroundAppPackageName:Ljava/lang/String;

    const-string v1, "com.android.systemui"

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/TaskHelper;->mForegroundAppPackageName:Ljava/lang/String;

    .line 229
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/TaskHelper;->isPackageLiveWalls(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 234
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 236
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/TaskHelper;->mForegroundAppPackageName:Ljava/lang/String;

    const/4 v4, -0x2

    invoke-interface {v0, v3, v4}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 238
    iget v3, p0, Lcom/android/systemui/statusbar/policy/TaskHelper;->mRunningTaskId:I

    invoke-interface {v0, v3}, Landroid/app/IActivityManager;->removeTask(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    .line 244
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/TaskHelper;->getForegroundAppLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 245
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/TaskHelper;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->empty_app_killed:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 248
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/TaskHelper;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->task_helper_app_killed:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/TaskHelper;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 252
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/TaskHelper;->mHandler:Lcom/android/systemui/statusbar/policy/TaskHelper$TaskHelperHandler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public onKeyguardShowingChanged()V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/TaskHelper;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/TaskHelper;->mKeyguardShowing:Z

    .line 259
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/TaskHelper;->mHandler:Lcom/android/systemui/statusbar/policy/TaskHelper$TaskHelperHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onOverlayChanged()V
    .locals 3

    .line 266
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/TaskHelper;->mHandler:Lcom/android/systemui/statusbar/policy/TaskHelper$TaskHelperHandler;

    const/4 v0, 0x1

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
