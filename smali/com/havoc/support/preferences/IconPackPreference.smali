.class public Lcom/havoc/support/preferences/IconPackPreference;
.super Landroidx/preference/Preference;
.source "IconPackPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/havoc/support/preferences/IconPackPreference$IconAdapter;,
        Lcom/havoc/support/preferences/IconPackPreference$IconPackInfo;
    }
.end annotation


# instance fields
.field private final pm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, v0}, Lcom/havoc/support/preferences/IconPackPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    sget p2, Lcom/havoc/support/R$layout;->iconpack_preference:I

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/havoc/support/preferences/IconPackPreference;->pm:Landroid/content/pm/PackageManager;

    .line 64
    invoke-virtual {p0}, Lcom/havoc/support/preferences/IconPackPreference;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/havoc/support/preferences/IconPackPreference;Ljava/lang/String;)Z
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistString(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/havoc/support/preferences/IconPackPreference;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/havoc/support/preferences/IconPackPreference;->setNone()V

    return-void
.end method

.method static synthetic access$200(Lcom/havoc/support/preferences/IconPackPreference;Ljava/lang/String;)Z
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistString(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private loadAvailableIconPacks()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/havoc/support/preferences/IconPackPreference$IconPackInfo;",
            ">;"
        }
    .end annotation

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 123
    iget-object v1, p0, Lcom/havoc/support/preferences/IconPackPreference;->pm:Landroid/content/pm/PackageManager;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.novalauncher.THEME"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 124
    iget-object v2, p0, Lcom/havoc/support/preferences/IconPackPreference;->pm:Landroid/content/pm/PackageManager;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "org.adw.launcher.icons.ACTION_PICK_ICON"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 125
    iget-object v2, p0, Lcom/havoc/support/preferences/IconPackPreference;->pm:Landroid/content/pm/PackageManager;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.dlto.atom.launcher.THEME"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 126
    iget-object v2, p0, Lcom/havoc/support/preferences/IconPackPreference;->pm:Landroid/content/pm/PackageManager;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "com.anddoes.launcher.THEME"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 127
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 128
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    new-instance v4, Lcom/havoc/support/preferences/IconPackPreference$IconPackInfo;

    iget-object v5, p0, Lcom/havoc/support/preferences/IconPackPreference;->pm:Landroid/content/pm/PackageManager;

    invoke-direct {v4, v2, v5}, Lcom/havoc/support/preferences/IconPackPreference$IconPackInfo;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private setNone()V
    .locals 2

    .line 84
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 85
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/havoc/support/R$string;->color_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    const-string v0, ""

    .line 69
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/havoc/support/preferences/IconPackPreference;->setNone()V

    goto :goto_0

    .line 74
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/havoc/support/preferences/IconPackPreference;->pm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/havoc/support/preferences/IconPackPreference;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 76
    iget-object v1, p0, Lcom/havoc/support/preferences/IconPackPreference;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    invoke-direct {p0}, Lcom/havoc/support/preferences/IconPackPreference;->setNone()V

    :goto_0
    return-void
.end method

.method protected onClick()V
    .locals 0

    .line 90
    invoke-super {p0}, Landroidx/preference/Preference;->onClick()V

    .line 91
    invoke-virtual {p0}, Lcom/havoc/support/preferences/IconPackPreference;->showDialog()V

    return-void
.end method

.method protected showDialog()V
    .locals 4

    .line 95
    invoke-direct {p0}, Lcom/havoc/support/preferences/IconPackPreference;->loadAvailableIconPacks()Ljava/util/Map;

    move-result-object v0

    .line 96
    new-instance v1, Lcom/havoc/support/preferences/IconPackPreference$IconAdapter;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/havoc/support/preferences/IconPackPreference$IconAdapter;-><init>(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    .line 97
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 98
    new-instance v3, Lcom/havoc/support/preferences/IconPackPreference$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/havoc/support/preferences/IconPackPreference$1;-><init>(Lcom/havoc/support/preferences/IconPackPreference;Lcom/havoc/support/preferences/IconPackPreference$IconAdapter;Ljava/util/Map;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 117
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
