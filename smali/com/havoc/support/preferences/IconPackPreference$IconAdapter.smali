.class Lcom/havoc/support/preferences/IconPackPreference$IconAdapter;
.super Landroid/widget/BaseAdapter;
.source "IconPackPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/havoc/support/preferences/IconPackPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IconAdapter"
.end annotation


# instance fields
.field mCurrentIconPack:Ljava/lang/String;

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field mSupportedPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/havoc/support/preferences/IconPackPreference$IconPackInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/havoc/support/preferences/IconPackPreference$IconPackInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 156
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 157
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/havoc/support/preferences/IconPackPreference$IconAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/havoc/support/preferences/IconPackPreference$IconAdapter;->mSupportedPackages:Ljava/util/ArrayList;

    .line 159
    new-instance p2, Lcom/havoc/support/preferences/IconPackPreference$IconAdapter$1;

    invoke-direct {p2, p0}, Lcom/havoc/support/preferences/IconPackPreference$IconAdapter$1;-><init>(Lcom/havoc/support/preferences/IconPackPreference$IconAdapter;)V

    invoke-static {v0, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/havoc/support/R$string;->color_default:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x1080093

    .line 168
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 169
    iget-object v0, p0, Lcom/havoc/support/preferences/IconPackPreference$IconAdapter;->mSupportedPackages:Ljava/util/ArrayList;

    new-instance v1, Lcom/havoc/support/preferences/IconPackPreference$IconPackInfo;

    const-string v2, ""

    invoke-direct {v1, p1, p2, v2}, Lcom/havoc/support/preferences/IconPackPreference$IconPackInfo;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 170
    iput-object p3, p0, Lcom/havoc/support/preferences/IconPackPreference$IconAdapter;->mCurrentIconPack:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/havoc/support/preferences/IconPackPreference$IconAdapter;->mSupportedPackages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 151
    invoke-virtual {p0, p1}, Lcom/havoc/support/preferences/IconPackPreference$IconAdapter;->getItem(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/havoc/support/preferences/IconPackPreference$IconAdapter;->mSupportedPackages:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/havoc/support/preferences/IconPackPreference$IconPackInfo;

    iget-object p0, p0, Lcom/havoc/support/preferences/IconPackPreference$IconPackInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 191
    iget-object p2, p0, Lcom/havoc/support/preferences/IconPackPreference$IconAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget p3, Lcom/havoc/support/R$layout;->iconpack_dialog:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 193
    :cond_0
    iget-object p3, p0, Lcom/havoc/support/preferences/IconPackPreference$IconAdapter;->mSupportedPackages:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/havoc/support/preferences/IconPackPreference$IconPackInfo;

    .line 194
    sget p3, Lcom/havoc/support/R$id;->title:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 195
    iget-object v0, p1, Lcom/havoc/support/preferences/IconPackPreference$IconPackInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    sget p3, Lcom/havoc/support/R$id;->icon:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 197
    iget-object v0, p1, Lcom/havoc/support/preferences/IconPackPreference$IconPackInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    sget p3, Lcom/havoc/support/R$id;->radio:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RadioButton;

    .line 199
    iget-object p1, p1, Lcom/havoc/support/preferences/IconPackPreference$IconPackInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/havoc/support/preferences/IconPackPreference$IconAdapter;->mCurrentIconPack:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p3, p0}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-object p2
.end method
