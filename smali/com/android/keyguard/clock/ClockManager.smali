.class public final Lcom/android/keyguard/clock/ClockManager;
.super Ljava/lang/Object;
.source "ClockManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/clock/ClockManager$AvailableClocks;,
        Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;
    }
.end annotation


# instance fields
.field private final mBuiltinClocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/plugins/ClockPlugin;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mCurrentUserObservable:Lcom/android/systemui/settings/CurrentUserObservable;

.field private final mCurrentUserObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

.field private final mDockManager:Lcom/android/systemui/dock/DockManager;

.field private final mHeight:I

.field private mIsDocked:Z

.field private final mListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;",
            "Lcom/android/keyguard/clock/ClockManager$AvailableClocks;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainHandler:Landroid/os/Handler;

.field private final mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

.field private final mPreviewClocks:Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

.field private final mSettingsWrapper:Lcom/android/keyguard/clock/SettingsWrapper;

.field private final mWidth:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/InjectionInflationController;Lcom/android/systemui/shared/plugins/PluginManager;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Landroid/content/ContentResolver;Lcom/android/systemui/settings/CurrentUserObservable;Lcom/android/keyguard/clock/SettingsWrapper;Lcom/android/systemui/dock/DockManager;)V
    .locals 2

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mBuiltinClocks:Ljava/util/List;

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mMainHandler:Landroid/os/Handler;

    .line 75
    new-instance v0, Lcom/android/keyguard/clock/ClockManager$1;

    iget-object v1, p0, Lcom/android/keyguard/clock/ClockManager;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/clock/ClockManager$1;-><init>(Lcom/android/keyguard/clock/ClockManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mContentObserver:Landroid/database/ContentObserver;

    .line 90
    new-instance v0, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$hg7TNpAa_jeQQKjwxI39ao59w9U;

    invoke-direct {v0, p0}, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$hg7TNpAa_jeQQKjwxI39ao59w9U;-><init>(Lcom/android/keyguard/clock/ClockManager;)V

    iput-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mCurrentUserObserver:Landroidx/lifecycle/Observer;

    .line 98
    new-instance v0, Lcom/android/keyguard/clock/ClockManager$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/clock/ClockManager$2;-><init>(Lcom/android/keyguard/clock/ClockManager;)V

    iput-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

    .line 122
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mListeners:Ljava/util/Map;

    .line 142
    iput-object p3, p0, Lcom/android/keyguard/clock/ClockManager;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    .line 143
    iput-object p5, p0, Lcom/android/keyguard/clock/ClockManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 144
    iput-object p7, p0, Lcom/android/keyguard/clock/ClockManager;->mSettingsWrapper:Lcom/android/keyguard/clock/SettingsWrapper;

    .line 145
    iput-object p6, p0, Lcom/android/keyguard/clock/ClockManager;->mCurrentUserObservable:Lcom/android/systemui/settings/CurrentUserObservable;

    .line 146
    iput-object p8, p0, Lcom/android/keyguard/clock/ClockManager;->mDockManager:Lcom/android/systemui/dock/DockManager;

    .line 147
    new-instance p3, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

    const/4 p5, 0x0

    invoke-direct {p3, p0, p5}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;-><init>(Lcom/android/keyguard/clock/ClockManager;Lcom/android/keyguard/clock/ClockManager$1;)V

    iput-object p3, p0, Lcom/android/keyguard/clock/ClockManager;->mPreviewClocks:Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 150
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p5

    invoke-virtual {p2, p5}, Lcom/android/systemui/util/InjectionInflationController;->injectable(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 152
    new-instance p5, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$qcpjSm9nfcenHjNSU7lKV-TGsX4;

    invoke-direct {p5, p3, p2, p4}, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$qcpjSm9nfcenHjNSU7lKV-TGsX4;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    invoke-virtual {p0, p5}, Lcom/android/keyguard/clock/ClockManager;->addBuiltinClock(Ljava/util/function/Supplier;)V

    .line 153
    new-instance p5, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$mCJuewhSbfqGAUXaP_8PWw4nqZs;

    invoke-direct {p5, p3, p2, p4}, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$mCJuewhSbfqGAUXaP_8PWw4nqZs;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    invoke-virtual {p0, p5}, Lcom/android/keyguard/clock/ClockManager;->addBuiltinClock(Ljava/util/function/Supplier;)V

    .line 154
    new-instance p5, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$KuKx3QjFfullqZu9O8YrysFYdRw;

    invoke-direct {p5, p3, p2, p4}, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$KuKx3QjFfullqZu9O8YrysFYdRw;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    invoke-virtual {p0, p5}, Lcom/android/keyguard/clock/ClockManager;->addBuiltinClock(Ljava/util/function/Supplier;)V

    .line 155
    new-instance p5, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$eaNA02iZUZJQJ5-qxkJww3veoBg;

    invoke-direct {p5, p3, p2, p4}, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$eaNA02iZUZJQJ5-qxkJww3veoBg;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    invoke-virtual {p0, p5}, Lcom/android/keyguard/clock/ClockManager;->addBuiltinClock(Ljava/util/function/Supplier;)V

    .line 156
    new-instance p5, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$PTxXa4NJTfXpfMZeNRAQjc0KKNc;

    invoke-direct {p5, p3, p2, p4}, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$PTxXa4NJTfXpfMZeNRAQjc0KKNc;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    invoke-virtual {p0, p5}, Lcom/android/keyguard/clock/ClockManager;->addBuiltinClock(Ljava/util/function/Supplier;)V

    .line 157
    new-instance p5, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$asFCCaBCbJR_fHqK_MS5trnRxBs;

    invoke-direct {p5, p3, p2, p4}, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$asFCCaBCbJR_fHqK_MS5trnRxBs;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    invoke-virtual {p0, p5}, Lcom/android/keyguard/clock/ClockManager;->addBuiltinClock(Ljava/util/function/Supplier;)V

    .line 158
    new-instance p5, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$rgoqkkbgXeF79jasDe-AluCia7A;

    invoke-direct {p5, p3, p2, p4}, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$rgoqkkbgXeF79jasDe-AluCia7A;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    invoke-virtual {p0, p5}, Lcom/android/keyguard/clock/ClockManager;->addBuiltinClock(Ljava/util/function/Supplier;)V

    .line 159
    new-instance p5, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$wjDJROTCRB7bxvUYLDsI361wSiI;

    invoke-direct {p5, p3, p2, p4}, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$wjDJROTCRB7bxvUYLDsI361wSiI;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    invoke-virtual {p0, p5}, Lcom/android/keyguard/clock/ClockManager;->addBuiltinClock(Ljava/util/function/Supplier;)V

    .line 160
    new-instance p5, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$CYUJ5UW-CDGaZOdYA3TXTpaPd0Q;

    invoke-direct {p5, p3, p2, p4}, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$CYUJ5UW-CDGaZOdYA3TXTpaPd0Q;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    invoke-virtual {p0, p5}, Lcom/android/keyguard/clock/ClockManager;->addBuiltinClock(Ljava/util/function/Supplier;)V

    .line 161
    new-instance p5, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$iK8U2lCoZ-iY_juyB160gDOTyVc;

    invoke-direct {p5, p3, p2, p4, p1}, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$iK8U2lCoZ-iY_juyB160gDOTyVc;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Landroid/content/Context;)V

    invoke-virtual {p0, p5}, Lcom/android/keyguard/clock/ClockManager;->addBuiltinClock(Ljava/util/function/Supplier;)V

    .line 162
    new-instance p1, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$sUhc8IYlwCrF3DbElX5S5xZ1SyU;

    invoke-direct {p1, p3, p2, p4}, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$sUhc8IYlwCrF3DbElX5S5xZ1SyU;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    invoke-virtual {p0, p1}, Lcom/android/keyguard/clock/ClockManager;->addBuiltinClock(Ljava/util/function/Supplier;)V

    .line 163
    new-instance p1, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$Xn_zBUlgcmVuIMAq0UWQ67aWMVE;

    invoke-direct {p1, p3, p2, p4}, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$Xn_zBUlgcmVuIMAq0UWQ67aWMVE;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    invoke-virtual {p0, p1}, Lcom/android/keyguard/clock/ClockManager;->addBuiltinClock(Ljava/util/function/Supplier;)V

    .line 164
    new-instance p1, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$yx-WLFrkhu717tgBsf771C4cUYw;

    invoke-direct {p1, p3, p2, p4}, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$yx-WLFrkhu717tgBsf771C4cUYw;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    invoke-virtual {p0, p1}, Lcom/android/keyguard/clock/ClockManager;->addBuiltinClock(Ljava/util/function/Supplier;)V

    .line 165
    new-instance p1, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$ScIE-5WSG-zmQpjyvg6CkJLr61c;

    invoke-direct {p1, p3, p2, p4}, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$ScIE-5WSG-zmQpjyvg6CkJLr61c;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    invoke-virtual {p0, p1}, Lcom/android/keyguard/clock/ClockManager;->addBuiltinClock(Ljava/util/function/Supplier;)V

    .line 166
    new-instance p1, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$olyTdA4evRLo2m5JHfNuApxSFxc;

    invoke-direct {p1, p3, p2, p4}, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$olyTdA4evRLo2m5JHfNuApxSFxc;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    invoke-virtual {p0, p1}, Lcom/android/keyguard/clock/ClockManager;->addBuiltinClock(Ljava/util/function/Supplier;)V

    .line 167
    new-instance p1, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$wlDehTiOURIqtyWhg0MOkaLoR_w;

    invoke-direct {p1, p3, p2, p4}, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$wlDehTiOURIqtyWhg0MOkaLoR_w;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    invoke-virtual {p0, p1}, Lcom/android/keyguard/clock/ClockManager;->addBuiltinClock(Ljava/util/function/Supplier;)V

    .line 168
    new-instance p1, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$d2gvdtkqzpq2OmcE0dGzu5iZQ8U;

    invoke-direct {p1, p3, p2, p4}, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$d2gvdtkqzpq2OmcE0dGzu5iZQ8U;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    invoke-virtual {p0, p1}, Lcom/android/keyguard/clock/ClockManager;->addBuiltinClock(Ljava/util/function/Supplier;)V

    .line 169
    new-instance p1, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$Afn-qHwYAKN7lTDCP063olnxGcQ;

    invoke-direct {p1, p3, p2, p4}, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$Afn-qHwYAKN7lTDCP063olnxGcQ;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    invoke-virtual {p0, p1}, Lcom/android/keyguard/clock/ClockManager;->addBuiltinClock(Ljava/util/function/Supplier;)V

    .line 170
    new-instance p1, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$v1UfIyEjAPiPvp8hnrW9ZfIjMgw;

    invoke-direct {p1, p3, p2, p4}, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$v1UfIyEjAPiPvp8hnrW9ZfIjMgw;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    invoke-virtual {p0, p1}, Lcom/android/keyguard/clock/ClockManager;->addBuiltinClock(Ljava/util/function/Supplier;)V

    .line 171
    new-instance p1, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$XfKjdmJobSb-GmYwfChHEQEboHQ;

    invoke-direct {p1, p3, p2, p4}, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$XfKjdmJobSb-GmYwfChHEQEboHQ;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    invoke-virtual {p0, p1}, Lcom/android/keyguard/clock/ClockManager;->addBuiltinClock(Ljava/util/function/Supplier;)V

    .line 174
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 175
    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p2, p0, Lcom/android/keyguard/clock/ClockManager;->mWidth:I

    .line 176
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/android/keyguard/clock/ClockManager;->mHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/InjectionInflationController;Lcom/android/systemui/shared/plugins/PluginManager;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 9

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/settings/CurrentUserObservable;

    invoke-direct {v6, p6}, Lcom/android/systemui/settings/CurrentUserObservable;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    new-instance v7, Lcom/android/keyguard/clock/SettingsWrapper;

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p6

    invoke-direct {v7, p6}, Lcom/android/keyguard/clock/SettingsWrapper;-><init>(Landroid/content/ContentResolver;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v8, p5

    .line 131
    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/clock/ClockManager;-><init>(Landroid/content/Context;Lcom/android/systemui/util/InjectionInflationController;Lcom/android/systemui/shared/plugins/PluginManager;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Landroid/content/ContentResolver;Lcom/android/systemui/settings/CurrentUserObservable;Lcom/android/keyguard/clock/SettingsWrapper;Lcom/android/systemui/dock/DockManager;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/clock/ClockManager;)Lcom/android/systemui/settings/CurrentUserObservable;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager;->mCurrentUserObservable:Lcom/android/systemui/settings/CurrentUserObservable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/keyguard/clock/ClockManager;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/android/keyguard/clock/ClockManager;->reload()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/clock/ClockManager;)Lcom/android/keyguard/clock/SettingsWrapper;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager;->mSettingsWrapper:Lcom/android/keyguard/clock/SettingsWrapper;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/keyguard/clock/ClockManager;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/keyguard/clock/ClockManager;->mWidth:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/keyguard/clock/ClockManager;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/keyguard/clock/ClockManager;->mHeight:I

    return p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/Integer;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/android/keyguard/clock/ClockManager;->reload()V

    return-void
.end method

.method static synthetic lambda$new$1(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)Lcom/android/systemui/plugins/ClockPlugin;
    .locals 1

    .line 152
    new-instance v0, Lcom/android/keyguard/clock/DefaultClockController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/keyguard/clock/DefaultClockController;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    return-object v0
.end method

.method static synthetic lambda$new$10(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Landroid/content/Context;)Lcom/android/systemui/plugins/ClockPlugin;
    .locals 1

    .line 161
    new-instance v0, Lcom/android/keyguard/clock/IDEClockController;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/keyguard/clock/IDEClockController;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$new$11(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)Lcom/android/systemui/plugins/ClockPlugin;
    .locals 1

    .line 162
    new-instance v0, Lcom/android/keyguard/clock/FluidClockController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/keyguard/clock/FluidClockController;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    return-object v0
.end method

.method static synthetic lambda$new$12(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)Lcom/android/systemui/plugins/ClockPlugin;
    .locals 1

    .line 163
    new-instance v0, Lcom/android/keyguard/clock/DividedLinesClockController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/keyguard/clock/DividedLinesClockController;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    return-object v0
.end method

.method static synthetic lambda$new$13(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)Lcom/android/systemui/plugins/ClockPlugin;
    .locals 1

    .line 164
    new-instance v0, Lcom/android/keyguard/clock/TuxClockController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/keyguard/clock/TuxClockController;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    return-object v0
.end method

.method static synthetic lambda$new$14(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)Lcom/android/systemui/plugins/ClockPlugin;
    .locals 1

    .line 165
    new-instance v0, Lcom/android/keyguard/clock/SfunyClockController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/keyguard/clock/SfunyClockController;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    return-object v0
.end method

.method static synthetic lambda$new$15(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)Lcom/android/systemui/plugins/ClockPlugin;
    .locals 1

    .line 166
    new-instance v0, Lcom/android/keyguard/clock/BinaryClockController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/keyguard/clock/BinaryClockController;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    return-object v0
.end method

.method static synthetic lambda$new$16(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)Lcom/android/systemui/plugins/ClockPlugin;
    .locals 1

    .line 167
    new-instance v0, Lcom/android/keyguard/clock/MNMLBoxClockController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/keyguard/clock/MNMLBoxClockController;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    return-object v0
.end method

.method static synthetic lambda$new$17(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)Lcom/android/systemui/plugins/ClockPlugin;
    .locals 1

    .line 168
    new-instance v0, Lcom/android/keyguard/clock/MNMLMinimalClockController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/keyguard/clock/MNMLMinimalClockController;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    return-object v0
.end method

.method static synthetic lambda$new$18(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)Lcom/android/systemui/plugins/ClockPlugin;
    .locals 1

    .line 169
    new-instance v0, Lcom/android/keyguard/clock/OronosClockController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/keyguard/clock/OronosClockController;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    return-object v0
.end method

.method static synthetic lambda$new$19(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)Lcom/android/systemui/plugins/ClockPlugin;
    .locals 1

    .line 170
    new-instance v0, Lcom/android/keyguard/clock/OOSClockController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/keyguard/clock/OOSClockController;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    return-object v0
.end method

.method static synthetic lambda$new$2(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)Lcom/android/systemui/plugins/ClockPlugin;
    .locals 1

    .line 153
    new-instance v0, Lcom/android/keyguard/clock/DefaultBoldClockController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/keyguard/clock/DefaultBoldClockController;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    return-object v0
.end method

.method static synthetic lambda$new$20(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)Lcom/android/systemui/plugins/ClockPlugin;
    .locals 1

    .line 171
    new-instance v0, Lcom/android/keyguard/clock/AndroidTwelveClockController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/keyguard/clock/AndroidTwelveClockController;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    return-object v0
.end method

.method static synthetic lambda$new$3(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)Lcom/android/systemui/plugins/ClockPlugin;
    .locals 1

    .line 154
    new-instance v0, Lcom/android/keyguard/clock/SamsungClockController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/keyguard/clock/SamsungClockController;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    return-object v0
.end method

.method static synthetic lambda$new$4(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)Lcom/android/systemui/plugins/ClockPlugin;
    .locals 1

    .line 155
    new-instance v0, Lcom/android/keyguard/clock/SamsungBoldClockController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/keyguard/clock/SamsungBoldClockController;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    return-object v0
.end method

.method static synthetic lambda$new$5(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)Lcom/android/systemui/plugins/ClockPlugin;
    .locals 1

    .line 156
    new-instance v0, Lcom/android/keyguard/clock/SamsungHighlightClockController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/keyguard/clock/SamsungHighlightClockController;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    return-object v0
.end method

.method static synthetic lambda$new$6(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)Lcom/android/systemui/plugins/ClockPlugin;
    .locals 1

    .line 157
    new-instance v0, Lcom/android/keyguard/clock/BubbleClockController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/keyguard/clock/BubbleClockController;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    return-object v0
.end method

.method static synthetic lambda$new$7(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)Lcom/android/systemui/plugins/ClockPlugin;
    .locals 1

    .line 158
    new-instance v0, Lcom/android/keyguard/clock/AnalogClockController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/keyguard/clock/AnalogClockController;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    return-object v0
.end method

.method static synthetic lambda$new$8(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)Lcom/android/systemui/plugins/ClockPlugin;
    .locals 1

    .line 159
    new-instance v0, Lcom/android/keyguard/clock/TypeClockController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/keyguard/clock/TypeClockController;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    return-object v0
.end method

.method static synthetic lambda$new$9(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)Lcom/android/systemui/plugins/ClockPlugin;
    .locals 1

    .line 160
    new-instance v0, Lcom/android/keyguard/clock/TypeClockAltController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/keyguard/clock/TypeClockAltController;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    return-object v0
.end method

.method static synthetic lambda$reload$21(Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;Lcom/android/systemui/plugins/ClockPlugin;)V
    .locals 1

    .line 271
    instance-of v0, p1, Lcom/android/keyguard/clock/DefaultClockController;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 270
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;->onClockChanged(Lcom/android/systemui/plugins/ClockPlugin;)V

    return-void
.end method

.method private synthetic lambda$reload$22(Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;Lcom/android/keyguard/clock/ClockManager$AvailableClocks;)V
    .locals 2

    .line 265
    invoke-virtual {p2}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->reloadCurrentClock()V

    .line 266
    invoke-virtual {p2}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->getCurrentClock()Lcom/android/systemui/plugins/ClockPlugin;

    move-result-object p2

    .line 267
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 268
    instance-of p0, p2, Lcom/android/keyguard/clock/DefaultClockController;

    if-eqz p0, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-interface {p1, p2}, Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;->onClockChanged(Lcom/android/systemui/plugins/ClockPlugin;)V

    goto :goto_0

    .line 270
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$YlqWutb-KmGKRNygdRPFGEZqXrw;

    invoke-direct {v0, p1, p2}, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$YlqWutb-KmGKRNygdRPFGEZqXrw;-><init>(Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;Lcom/android/systemui/plugins/ClockPlugin;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private register()V
    .locals 5

    .line 240
    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    iget-object v1, p0, Lcom/android/keyguard/clock/ClockManager;->mPreviewClocks:Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

    const-class v2, Lcom/android/systemui/plugins/ClockPlugin;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/shared/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 241
    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_screen_custom_clock_face"

    .line 242
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/clock/ClockManager;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 241
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 244
    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "docked_clock_face"

    .line 245
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/clock/ClockManager;->mContentObserver:Landroid/database/ContentObserver;

    .line 244
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 247
    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mCurrentUserObservable:Lcom/android/systemui/settings/CurrentUserObservable;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserObservable;->getCurrentUser()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/clock/ClockManager;->mCurrentUserObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 248
    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mDockManager:Lcom/android/systemui/dock/DockManager;

    if-eqz v0, :cond_0

    .line 249
    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager;->mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/dock/DockManager;->addListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V

    :cond_0
    return-void
.end method

.method private reload()V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mPreviewClocks:Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

    invoke-virtual {v0}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->reloadCurrentClock()V

    .line 264
    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mListeners:Ljava/util/Map;

    new-instance v1, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$wMJKrvWG7JL0Ew2RGhnOuWc43_w;

    invoke-direct {v1, p0}, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$wMJKrvWG7JL0Ew2RGhnOuWc43_w;-><init>(Lcom/android/keyguard/clock/ClockManager;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method private unregister()V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    iget-object v1, p0, Lcom/android/keyguard/clock/ClockManager;->mPreviewClocks:Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

    invoke-interface {v0, v1}, Lcom/android/systemui/shared/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    .line 255
    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/keyguard/clock/ClockManager;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 256
    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mCurrentUserObservable:Lcom/android/systemui/settings/CurrentUserObservable;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserObservable;->getCurrentUser()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/clock/ClockManager;->mCurrentUserObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 257
    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mDockManager:Lcom/android/systemui/dock/DockManager;

    if-eqz v0, :cond_0

    .line 258
    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager;->mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/dock/DockManager;->removeListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method addBuiltinClock(Ljava/util/function/Supplier;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/plugins/ClockPlugin;",
            ">;)V"
        }
    .end annotation

    .line 234
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ClockPlugin;

    .line 235
    iget-object v1, p0, Lcom/android/keyguard/clock/ClockManager;->mPreviewClocks:Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->addClockPlugin(Lcom/android/systemui/plugins/ClockPlugin;)V

    .line 236
    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager;->mBuiltinClocks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnClockChangedListener(Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;)V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/android/keyguard/clock/ClockManager;->register()V

    .line 186
    :cond_0
    new-instance v0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;-><init>(Lcom/android/keyguard/clock/ClockManager;Lcom/android/keyguard/clock/ClockManager$1;)V

    const/4 v1, 0x0

    .line 187
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/clock/ClockManager;->mBuiltinClocks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 188
    iget-object v2, p0, Lcom/android/keyguard/clock/ClockManager;->mBuiltinClocks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/Supplier;

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/ClockPlugin;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->addClockPlugin(Lcom/android/systemui/plugins/ClockPlugin;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/clock/ClockManager;->mListeners:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object p1, p0, Lcom/android/keyguard/clock/ClockManager;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    const-class v1, Lcom/android/systemui/plugins/ClockPlugin;

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/android/systemui/shared/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 192
    invoke-direct {p0}, Lcom/android/keyguard/clock/ClockManager;->reload()V

    return-void
.end method

.method getClockInfos()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/keyguard/clock/ClockInfo;",
            ">;"
        }
    .end annotation

    .line 210
    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager;->mPreviewClocks:Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

    invoke-virtual {p0}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->getInfo()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method getContentObserver()Landroid/database/ContentObserver;
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager;->mContentObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method isDocked()Z
    .locals 0

    .line 224
    iget-boolean p0, p0, Lcom/android/keyguard/clock/ClockManager;->mIsDocked:Z

    return p0
.end method

.method public synthetic lambda$new$0$ClockManager(Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/clock/ClockManager;->lambda$new$0(Ljava/lang/Integer;)V

    return-void
.end method

.method public synthetic lambda$reload$22$ClockManager(Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;Lcom/android/keyguard/clock/ClockManager$AvailableClocks;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/clock/ClockManager;->lambda$reload$22(Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;Lcom/android/keyguard/clock/ClockManager$AvailableClocks;)V

    return-void
.end method

.method public removeOnClockChangedListener(Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;)V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

    .line 200
    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    invoke-interface {v0, p1}, Lcom/android/systemui/shared/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    .line 201
    iget-object p1, p0, Lcom/android/keyguard/clock/ClockManager;->mListeners:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 202
    invoke-direct {p0}, Lcom/android/keyguard/clock/ClockManager;->unregister()V

    :cond_0
    return-void
.end method
