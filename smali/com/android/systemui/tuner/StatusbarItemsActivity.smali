.class public Lcom/android/systemui/tuner/StatusbarItemsActivity;
.super Landroid/app/Activity;
.source "StatusbarItemsActivity.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic lambda$onDestroy$0(Lcom/android/systemui/fragments/FragmentService;)V
    .locals 0

    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/fragments/FragmentService;->destroyAll()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/tuner/StatusbarItems;

    invoke-direct {p1}, Lcom/android/systemui/tuner/StatusbarItems;-><init>()V

    const v0, 0x1020002

    invoke-virtual {p0, v0, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 38
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 43
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 44
    const-class p0, Lcom/android/systemui/fragments/FragmentService;

    sget-object v0, Lcom/android/systemui/tuner/-$$Lambda$StatusbarItemsActivity$VXg98mLOs9-zSVvn2ioPxd2j0HA;->INSTANCE:Lcom/android/systemui/tuner/-$$Lambda$StatusbarItemsActivity$VXg98mLOs9-zSVvn2ioPxd2j0HA;

    invoke-static {p0, v0}, Lcom/android/systemui/Dependency;->destroy(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 49
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 51
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    const/4 p0, 0x1

    return p0
.end method
