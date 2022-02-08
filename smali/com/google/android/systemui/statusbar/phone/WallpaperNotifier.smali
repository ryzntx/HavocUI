.class public Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;
.super Ljava/lang/Object;
.source "WallpaperNotifier.java"


# static fields
.field private static final NOTIFYABLE_PACKAGES:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NOTIFYABLE_WALLPAPERS:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEntryListener:Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

.field private final mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private mShouldBroadcastNotifications:Z

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

.field private mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mWallpaperPackage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "com.breel.wallpapers"

    const-string v1, "com.breel.wallpapers18"

    const-string v2, "com.google.pixel.livewallpaper"

    .line 23
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->NOTIFYABLE_PACKAGES:Ljava/util/HashSet;

    const-string v1, "com.breel.wallpapers.imprint"

    const-string v2, "com.breel.wallpapers18.tactile"

    const-string v3, "com.breel.wallpapers18.delight"

    const-string v4, "com.breel.wallpapers18.miniman"

    const-string v5, "com.google.pixel.livewallpaper.imprint"

    const-string v6, "com.google.pixel.livewallpaper.tactile"

    const-string v7, "com.google.pixel.livewallpaper.delight"

    const-string v8, "com.google.pixel.livewallpaper.miniman"

    .line 24
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->NOTIFYABLE_WALLPAPERS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier$1;-><init>(Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;)V

    iput-object v0, p0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->mEntryListener:Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    .line 42
    new-instance v0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier$2;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier$2;-><init>(Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;)V

    iput-object v0, p0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 54
    iput-object p1, p0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 56
    new-instance p1, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier$3;

    invoke-direct {p1, p0, p3}, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier$3;-><init>(Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;)Lcom/android/systemui/settings/CurrentUserTracker;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->mShouldBroadcastNotifications:Z

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->mWallpaperPackage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;)Landroid/content/Context;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->checkNotificationBroadcastSupport()V

    return-void
.end method

.method private checkNotificationBroadcastSupport()V
    .locals 5

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->mShouldBroadcastNotifications:Z

    .line 72
    iget-object v1, p0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/WallpaperManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/WallpaperManager;

    if-eqz v1, :cond_1

    .line 73
    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 74
    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 76
    sget-object v3, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->NOTIFYABLE_PACKAGES:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 77
    iput-object v2, p0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->mWallpaperPackage:Ljava/lang/String;

    .line 78
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 79
    sget-object v2, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->NOTIFYABLE_WALLPAPERS:[Ljava/lang/String;

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 80
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->mShouldBroadcastNotifications:Z

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public attach()V
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->mEntryListener:Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    .line 65
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 66
    invoke-direct {p0}, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->checkNotificationBroadcastSupport()V

    return-void
.end method
