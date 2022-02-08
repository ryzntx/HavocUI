.class public Lcom/havoc/support/preferences/AppPicker;
.super Landroid/app/ListActivity;
.source "AppPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/havoc/support/preferences/AppPicker$ActivitiesAdapter;,
        Lcom/havoc/support/preferences/AppPicker$Adapter;,
        Lcom/havoc/support/preferences/AppPicker$LoadApplications;
    }
.end annotation


# instance fields
.field protected applist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected listadapter:Lcom/havoc/support/preferences/AppPicker$Adapter;

.field protected mActivitiesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsActivitiesList:Z

.field protected packageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/havoc/support/preferences/AppPicker;->packageManager:Landroid/content/pm/PackageManager;

    .line 46
    iput-object v0, p0, Lcom/havoc/support/preferences/AppPicker;->applist:Ljava/util/List;

    .line 47
    iput-object v0, p0, Lcom/havoc/support/preferences/AppPicker;->listadapter:Lcom/havoc/support/preferences/AppPicker$Adapter;

    .line 49
    iput-object v0, p0, Lcom/havoc/support/preferences/AppPicker;->mActivitiesList:Ljava/util/List;

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/havoc/support/preferences/AppPicker;->mIsActivitiesList:Z

    return-void
.end method

.method static synthetic access$000(Lcom/havoc/support/preferences/AppPicker;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/havoc/support/preferences/AppPicker;->checkForLaunchIntent(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private checkForLaunchIntent(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.google.android.as"

    const-string v2, "com.google.android.GoogleCamera"

    const-string v3, "com.google.android.imaging.easel.service"

    const-string v4, "com.android.traceur"

    .line 90
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 101
    :try_start_0
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/havoc/support/preferences/AppPicker;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 102
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 103
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 106
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 111
    :cond_1
    new-instance p1, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;

    iget-object p0, p0, Lcom/havoc/support/preferences/AppPicker;->packageManager:Landroid/content/pm/PackageManager;

    invoke-direct {p1, p0}, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/havoc/support/preferences/AppPicker;->mIsActivitiesList:Z

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/havoc/support/preferences/AppPicker;->listadapter:Lcom/havoc/support/preferences/AppPicker$Adapter;

    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    sget v0, Lcom/havoc/support/R$string;->active_edge_app_select_title:I

    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->setTitle(I)V

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/havoc/support/preferences/AppPicker;->mIsActivitiesList:Z

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p0}, Landroid/app/ListActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 54
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x1090014

    .line 55
    invoke-virtual {p0, p1}, Landroid/app/ListActivity;->setContentView(I)V

    .line 56
    sget p1, Lcom/havoc/support/R$string;->active_edge_app_select_title:I

    invoke-virtual {p0, p1}, Landroid/app/ListActivity;->setTitle(I)V

    .line 58
    invoke-virtual {p0}, Landroid/app/ListActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/havoc/support/preferences/AppPicker;->packageManager:Landroid/content/pm/PackageManager;

    .line 59
    new-instance p1, Lcom/havoc/support/preferences/AppPicker$LoadApplications;

    invoke-direct {p1, p0}, Lcom/havoc/support/preferences/AppPicker$LoadApplications;-><init>(Lcom/havoc/support/preferences/AppPicker;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected abstract onLongClick(I)V
.end method

.method protected showActivitiesDialog(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lcom/havoc/support/preferences/AppPicker;->mIsActivitiesList:Z

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/havoc/support/preferences/AppPicker;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    .line 167
    iput-object v5, p0, Lcom/havoc/support/preferences/AppPicker;->mActivitiesList:Ljava/util/List;

    if-nez v5, :cond_0

    const/4 p1, 0x0

    .line 171
    iput-boolean p1, p0, Lcom/havoc/support/preferences/AppPicker;->mIsActivitiesList:Z

    return-void

    .line 175
    :cond_0
    sget p1, Lcom/havoc/support/R$string;->active_edge_activity_select_title:I

    invoke-virtual {p0, p1}, Landroid/app/ListActivity;->setTitle(I)V

    .line 177
    new-instance p1, Lcom/havoc/support/preferences/AppPicker$ActivitiesAdapter;

    sget v4, Lcom/havoc/support/R$layout;->app_list_item:I

    iget-object v6, p0, Lcom/havoc/support/preferences/AppPicker;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/havoc/support/preferences/AppPicker$ActivitiesAdapter;-><init>(Lcom/havoc/support/preferences/AppPicker;Landroid/content/Context;ILjava/util/List;Landroid/content/pm/PackageManager;Lcom/havoc/support/preferences/AppPicker$1;)V

    .line 178
    invoke-virtual {p0, p1}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
