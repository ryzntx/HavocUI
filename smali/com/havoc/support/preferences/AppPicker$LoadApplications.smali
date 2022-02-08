.class Lcom/havoc/support/preferences/AppPicker$LoadApplications;
.super Landroid/os/AsyncTask;
.source "AppPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/havoc/support/preferences/AppPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadApplications"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/havoc/support/preferences/AppPicker;


# direct methods
.method constructor <init>(Lcom/havoc/support/preferences/AppPicker;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/havoc/support/preferences/AppPicker$LoadApplications;->this$0:Lcom/havoc/support/preferences/AppPicker;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 116
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/havoc/support/preferences/AppPicker$LoadApplications;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8

    .line 120
    iget-object p1, p0, Lcom/havoc/support/preferences/AppPicker$LoadApplications;->this$0:Lcom/havoc/support/preferences/AppPicker;

    iget-object v0, p1, Lcom/havoc/support/preferences/AppPicker;->packageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/havoc/support/preferences/AppPicker;->access$000(Lcom/havoc/support/preferences/AppPicker;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/havoc/support/preferences/AppPicker;->applist:Ljava/util/List;

    .line 122
    iget-object p1, p0, Lcom/havoc/support/preferences/AppPicker$LoadApplications;->this$0:Lcom/havoc/support/preferences/AppPicker;

    new-instance v7, Lcom/havoc/support/preferences/AppPicker$Adapter;

    iget-object v2, p0, Lcom/havoc/support/preferences/AppPicker$LoadApplications;->this$0:Lcom/havoc/support/preferences/AppPicker;

    sget v3, Lcom/havoc/support/R$layout;->app_list_item:I

    iget-object v4, v2, Lcom/havoc/support/preferences/AppPicker;->applist:Ljava/util/List;

    iget-object v5, v2, Lcom/havoc/support/preferences/AppPicker;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, v2

    invoke-direct/range {v0 .. v6}, Lcom/havoc/support/preferences/AppPicker$Adapter;-><init>(Lcom/havoc/support/preferences/AppPicker;Landroid/content/Context;ILjava/util/List;Landroid/content/pm/PackageManager;Lcom/havoc/support/preferences/AppPicker$1;)V

    iput-object v7, p1, Lcom/havoc/support/preferences/AppPicker;->listadapter:Lcom/havoc/support/preferences/AppPicker$Adapter;

    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 116
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/havoc/support/preferences/AppPicker$LoadApplications;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 129
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 130
    iget-object p1, p0, Lcom/havoc/support/preferences/AppPicker$LoadApplications;->this$0:Lcom/havoc/support/preferences/AppPicker;

    iget-object v0, p1, Lcom/havoc/support/preferences/AppPicker;->listadapter:Lcom/havoc/support/preferences/AppPicker$Adapter;

    invoke-virtual {p1, v0}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 132
    iget-object p1, p0, Lcom/havoc/support/preferences/AppPicker$LoadApplications;->this$0:Lcom/havoc/support/preferences/AppPicker;

    invoke-virtual {p1}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 133
    iget-object p1, p0, Lcom/havoc/support/preferences/AppPicker$LoadApplications;->this$0:Lcom/havoc/support/preferences/AppPicker;

    invoke-virtual {p1}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    new-instance v0, Lcom/havoc/support/preferences/AppPicker$LoadApplications$1;

    invoke-direct {v0, p0}, Lcom/havoc/support/preferences/AppPicker$LoadApplications$1;-><init>(Lcom/havoc/support/preferences/AppPicker$LoadApplications;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 145
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
