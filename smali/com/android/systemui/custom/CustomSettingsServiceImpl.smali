.class public Lcom/android/systemui/custom/CustomSettingsServiceImpl;
.super Lcom/android/systemui/custom/CustomSettingsService;
.source "CustomSettingsServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/custom/CustomSettingsServiceImpl$Observer;
    }
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private final mIntSettings:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeningUris:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mObserver:Lcom/android/systemui/custom/CustomSettingsServiceImpl$Observer;

.field private final mObserverLookup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/android/systemui/custom/CustomSettingsService$CustomSettingsObserver;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mStringSettings:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/custom/CustomSettingsService;-><init>()V

    .line 56
    new-instance p2, Lcom/android/systemui/custom/CustomSettingsServiceImpl$Observer;

    invoke-direct {p2, p0}, Lcom/android/systemui/custom/CustomSettingsServiceImpl$Observer;-><init>(Lcom/android/systemui/custom/CustomSettingsServiceImpl;)V

    iput-object p2, p0, Lcom/android/systemui/custom/CustomSettingsServiceImpl;->mObserver:Lcom/android/systemui/custom/CustomSettingsServiceImpl$Observer;

    .line 58
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/custom/CustomSettingsServiceImpl;->mListeningUris:Landroid/util/ArrayMap;

    .line 60
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/custom/CustomSettingsServiceImpl;->mObserverLookup:Ljava/util/HashMap;

    .line 61
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/custom/CustomSettingsServiceImpl;->mStringSettings:Ljava/util/HashSet;

    .line 62
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/custom/CustomSettingsServiceImpl;->mIntSettings:Ljava/util/HashSet;

    .line 73
    iput-object p1, p0, Lcom/android/systemui/custom/CustomSettingsServiceImpl;->mContext:Landroid/content/Context;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/custom/CustomSettingsServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 76
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/custom/CustomSettingsServiceImpl;->mCurrentUser:I

    .line 77
    new-instance p1, Lcom/android/systemui/custom/CustomSettingsServiceImpl$1;

    invoke-direct {p1, p0, p3}, Lcom/android/systemui/custom/CustomSettingsServiceImpl$1;-><init>(Lcom/android/systemui/custom/CustomSettingsServiceImpl;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    iput-object p1, p0, Lcom/android/systemui/custom/CustomSettingsServiceImpl;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 85
    invoke-virtual {p1}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/custom/CustomSettingsServiceImpl;I)I
    .locals 0

    .line 54
    iput p1, p0, Lcom/android/systemui/custom/CustomSettingsServiceImpl;->mCurrentUser:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/custom/CustomSettingsServiceImpl;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/systemui/custom/CustomSettingsServiceImpl;->reloadAll()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/custom/CustomSettingsServiceImpl;Landroid/net/Uri;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/custom/CustomSettingsServiceImpl;->reloadSetting(Landroid/net/Uri;)V

    return-void
.end method

.method private reloadAll()V
    .locals 5

    .line 181
    iget-object v0, p0, Lcom/android/systemui/custom/CustomSettingsServiceImpl;->mObserverLookup:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 182
    iget-object v2, p0, Lcom/android/systemui/custom/CustomSettingsServiceImpl;->mStringSettings:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 183
    iget-object v2, p0, Lcom/android/systemui/custom/CustomSettingsServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget v3, p0, Lcom/android/systemui/custom/CustomSettingsServiceImpl;->mCurrentUser:I

    invoke-static {v2, v1, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 184
    iget-object v3, p0, Lcom/android/systemui/custom/CustomSettingsServiceImpl;->mObserverLookup:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/custom/CustomSettingsService$CustomSettingsObserver;

    .line 185
    invoke-interface {v4, v1, v2}, Lcom/android/systemui/custom/CustomSettingsService$CustomSettingsObserver;->onStringSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/custom/CustomSettingsServiceImpl;->mIntSettings:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/custom/CustomSettingsServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget v3, p0, Lcom/android/systemui/custom/CustomSettingsServiceImpl;->mCurrentUser:I

    invoke-static {v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 191
    iget-object v3, p0, Lcom/android/systemui/custom/CustomSettingsServiceImpl;->mObserverLookup:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/custom/CustomSettingsService$CustomSettingsObserver;

    .line 192
    invoke-interface {v4, v1, v2}, Lcom/android/systemui/custom/CustomSettingsService$CustomSettingsObserver;->onIntSettingChanged(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    return-void
.end method

.method private reloadSetting(Landroid/net/Uri;)V
    .locals 4

    .line 158
    iget-object v0, p0, Lcom/android/systemui/custom/CustomSettingsServiceImpl;->mListeningUris:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/android/systemui/custom/CustomSettingsServiceImpl;->mObserverLookup:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    return-void

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/custom/CustomSettingsServiceImpl;->mStringSettings:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/android/systemui/custom/CustomSettingsServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget v2, p0, Lcom/android/systemui/custom/CustomSettingsServiceImpl;->mCurrentUser:I

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/custom/CustomSettingsService$CustomSettingsObserver;

    .line 166
    invoke-interface {v3, p1, v1}, Lcom/android/systemui/custom/CustomSettingsService$CustomSettingsObserver;->onStringSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/custom/CustomSettingsServiceImpl;->mIntSettings:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/custom/CustomSettingsServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget p0, p0, Lcom/android/systemui/custom/CustomSettingsServiceImpl;->mCurrentUser:I

    invoke-static {v1, p1, p0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 172
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/custom/CustomSettingsService$CustomSettingsObserver;

    .line 173
    invoke-interface {v1, p1, p0}, Lcom/android/systemui/custom/CustomSettingsService$CustomSettingsObserver;->onIntSettingChanged(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_2
    return-void
.end method


# virtual methods
.method protected reregisterAll()V
    .locals 6

    .line 148
    iget-object v0, p0, Lcom/android/systemui/custom/CustomSettingsServiceImpl;->mListeningUris:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/custom/CustomSettingsServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/custom/CustomSettingsServiceImpl;->mObserver:Lcom/android/systemui/custom/CustomSettingsServiceImpl$Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 152
    iget-object v0, p0, Lcom/android/systemui/custom/CustomSettingsServiceImpl;->mListeningUris:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 153
    iget-object v2, p0, Lcom/android/systemui/custom/CustomSettingsServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/custom/CustomSettingsServiceImpl;->mObserver:Lcom/android/systemui/custom/CustomSettingsServiceImpl$Observer;

    iget v5, p0, Lcom/android/systemui/custom/CustomSettingsServiceImpl;->mCurrentUser:I

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0

    :cond_1
    return-void
.end method
