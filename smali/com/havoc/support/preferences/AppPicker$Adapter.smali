.class Lcom/havoc/support/preferences/AppPicker$Adapter;
.super Landroid/widget/ArrayAdapter;
.source "AppPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/havoc/support/preferences/AppPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Landroid/content/pm/ApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private appList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private packageManager:Landroid/content/pm/PackageManager;


# direct methods
.method private constructor <init>(Lcom/havoc/support/preferences/AppPicker;Landroid/content/Context;ILjava/util/List;Landroid/content/pm/PackageManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;",
            "Landroid/content/pm/PackageManager;",
            ")V"
        }
    .end annotation

    .line 188
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 190
    iput-object p2, p0, Lcom/havoc/support/preferences/AppPicker$Adapter;->context:Landroid/content/Context;

    .line 191
    iput-object p4, p0, Lcom/havoc/support/preferences/AppPicker$Adapter;->appList:Ljava/util/List;

    .line 192
    iput-object p5, p0, Lcom/havoc/support/preferences/AppPicker$Adapter;->packageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/havoc/support/preferences/AppPicker;Landroid/content/Context;ILjava/util/List;Landroid/content/pm/PackageManager;Lcom/havoc/support/preferences/AppPicker$1;)V
    .locals 0

    .line 181
    invoke-direct/range {p0 .. p5}, Lcom/havoc/support/preferences/AppPicker$Adapter;-><init>(Lcom/havoc/support/preferences/AppPicker;Landroid/content/Context;ILjava/util/List;Landroid/content/pm/PackageManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/havoc/support/preferences/AppPicker$Adapter;->appList:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getItem(I)Landroid/content/pm/ApplicationInfo;
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/havoc/support/preferences/AppPicker$Adapter;->appList:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ApplicationInfo;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 181
    invoke-virtual {p0, p1}, Lcom/havoc/support/preferences/AppPicker$Adapter;->getItem(I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 214
    iget-object p3, p0, Lcom/havoc/support/preferences/AppPicker$Adapter;->appList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    if-nez p2, :cond_0

    .line 217
    iget-object p2, p0, Lcom/havoc/support/preferences/AppPicker$Adapter;->context:Landroid/content/Context;

    const-string p3, "layout_inflater"

    .line 218
    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 219
    sget p3, Lcom/havoc/support/R$layout;->app_list_item:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    if-eqz p1, :cond_1

    .line 223
    sget p3, Lcom/havoc/support/R$id;->app_name:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 224
    sget v0, Lcom/havoc/support/R$id;->app_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 226
    iget-object v1, p0, Lcom/havoc/support/preferences/AppPicker$Adapter;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object p0, p0, Lcom/havoc/support/preferences/AppPicker$Adapter;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-object p2
.end method
