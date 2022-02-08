.class Lcom/havoc/support/preferences/AppPicker$ActivitiesAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AppPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/havoc/support/preferences/AppPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActivitiesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Landroid/content/pm/ActivityInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private appList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lcom/havoc/support/preferences/AppPicker;Landroid/content/Context;ILjava/util/List;Landroid/content/pm/PackageManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/ActivityInfo;",
            ">;",
            "Landroid/content/pm/PackageManager;",
            ")V"
        }
    .end annotation

    .line 240
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 242
    iput-object p2, p0, Lcom/havoc/support/preferences/AppPicker$ActivitiesAdapter;->context:Landroid/content/Context;

    .line 243
    iput-object p4, p0, Lcom/havoc/support/preferences/AppPicker$ActivitiesAdapter;->appList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/havoc/support/preferences/AppPicker;Landroid/content/Context;ILjava/util/List;Landroid/content/pm/PackageManager;Lcom/havoc/support/preferences/AppPicker$1;)V
    .locals 0

    .line 233
    invoke-direct/range {p0 .. p5}, Lcom/havoc/support/preferences/AppPicker$ActivitiesAdapter;-><init>(Lcom/havoc/support/preferences/AppPicker;Landroid/content/Context;ILjava/util/List;Landroid/content/pm/PackageManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/havoc/support/preferences/AppPicker$ActivitiesAdapter;->appList:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getItem(I)Landroid/content/pm/ActivityInfo;
    .locals 0

    .line 254
    iget-object p0, p0, Lcom/havoc/support/preferences/AppPicker$ActivitiesAdapter;->appList:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ActivityInfo;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 233
    invoke-virtual {p0, p1}, Lcom/havoc/support/preferences/AppPicker$ActivitiesAdapter;->getItem(I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 266
    iget-object p3, p0, Lcom/havoc/support/preferences/AppPicker$ActivitiesAdapter;->appList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ActivityInfo;

    if-nez p2, :cond_0

    .line 269
    iget-object p0, p0, Lcom/havoc/support/preferences/AppPicker$ActivitiesAdapter;->context:Landroid/content/Context;

    const-string p2, "layout_inflater"

    .line 270
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    const p2, 0x1090003

    const/4 p3, 0x0

    .line 271
    invoke-virtual {p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    if-eqz p1, :cond_1

    const p0, 0x1020014

    .line 275
    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 277
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 281
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-object p2
.end method
