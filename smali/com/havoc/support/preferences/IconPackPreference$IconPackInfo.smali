.class Lcom/havoc/support/preferences/IconPackPreference$IconPackInfo;
.super Ljava/lang/Object;
.source "IconPackPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/havoc/support/preferences/IconPackPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IconPackInfo"
.end annotation


# instance fields
.field icon:Landroid/graphics/drawable/Drawable;

.field label:Ljava/lang/CharSequence;

.field packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)V
    .locals 1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/havoc/support/preferences/IconPackPreference$IconPackInfo;->packageName:Ljava/lang/String;

    .line 140
    invoke-virtual {p1, p2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/havoc/support/preferences/IconPackPreference$IconPackInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 141
    invoke-virtual {p1, p2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/havoc/support/preferences/IconPackPreference$IconPackInfo;->label:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/havoc/support/preferences/IconPackPreference$IconPackInfo;->label:Ljava/lang/CharSequence;

    .line 146
    iput-object p2, p0, Lcom/havoc/support/preferences/IconPackPreference$IconPackInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 147
    iput-object p3, p0, Lcom/havoc/support/preferences/IconPackPreference$IconPackInfo;->packageName:Ljava/lang/String;

    return-void
.end method
