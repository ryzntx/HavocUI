.class public Lcom/android/systemui/qs/tiles/LocaleTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "LocaleTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private applyLocale:Ljava/lang/Runnable;

.field private currentLocaleBackup:Ljava/util/Locale;

.field private mLocaleList:Landroid/os/LocaleList;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 101
    new-instance p1, Lcom/android/systemui/qs/tiles/LocaleTile$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/LocaleTile$1;-><init>(Lcom/android/systemui/qs/tiles/LocaleTile;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/LocaleTile;->applyLocale:Ljava/lang/Runnable;

    .line 147
    new-instance p1, Lcom/android/systemui/qs/tiles/LocaleTile$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/LocaleTile$2;-><init>(Lcom/android/systemui/qs/tiles/LocaleTile;)V

    .line 62
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocaleTile;->updateLocaleList()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/LocaleTile;)Ljava/util/Locale;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/LocaleTile;->currentLocaleBackup:Ljava/util/Locale;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/tiles/LocaleTile;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/LocaleTile;->currentLocaleBackup:Ljava/util/Locale;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/LocaleTile;)Landroid/os/LocaleList;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/LocaleTile;->mLocaleList:Landroid/os/LocaleList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/LocaleTile;)Lcom/android/systemui/qs/QSHost;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/LocaleTile;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocaleTile;->updateLocaleList()V

    return-void
.end method

.method private checkToggleDisabled()Z
    .locals 2

    .line 163
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocaleTile;->updateLocaleList()V

    .line 164
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocaleTile;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleLongClick()V

    .line 166
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_locale_more_locales_toast:I

    .line 167
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 168
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private toggleLocale()V
    .locals 6

    .line 88
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocaleTile;->currentLocaleBackup:Ljava/util/Locale;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocaleTile;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/LocaleTile;->currentLocaleBackup:Ljava/util/Locale;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocaleTile;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v0

    new-array v2, v0, [Ljava/util/Locale;

    :goto_0
    if-ge v1, v0, :cond_1

    .line 93
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/LocaleTile;->mLocaleList:Landroid/os/LocaleList;

    add-int/lit8 v4, v1, 0x1

    rem-int v5, v4, v0

    invoke-virtual {v3, v5}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    aput-object v3, v2, v1

    move v1, v4

    goto :goto_0

    .line 95
    :cond_1
    new-instance v0, Landroid/os/LocaleList;

    invoke-direct {v0, v2}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/LocaleTile;->mLocaleList:Landroid/os/LocaleList;

    .line 96
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocaleTile;->applyLocale:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 97
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocaleTile;->applyLocale:Ljava/lang/Runnable;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 98
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method

.method private updateLocaleList()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocaleTile;->currentLocaleBackup:Ljava/util/Locale;

    if-eqz v0, :cond_0

    return-void

    .line 159
    :cond_0
    invoke-static {}, Landroid/os/LocaleList;->getAdjustedDefault()Landroid/os/LocaleList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/LocaleTile;->mLocaleList:Landroid/os/LocaleList;

    return-void
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .locals 3

    .line 114
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.LanguageSettings"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x7cf

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 120
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_locale_label:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .locals 1

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocaleTile;->checkToggleDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 73
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocaleTile;->toggleLocale()V

    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocaleTile;->checkToggleDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 79
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocaleTile;->toggleLocale()V

    return-void
.end method

.method public handleSetListening(Z)V
    .locals 0

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 1

    .line 130
    sget p2, Lcom/android/systemui/R$drawable;->ic_qs_locale:I

    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 131
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_locale_label:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 132
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/LocaleTile;->mLocaleList:Landroid/os/LocaleList;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 47
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/LocaleTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 0

    .line 67
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/LocaleTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method
