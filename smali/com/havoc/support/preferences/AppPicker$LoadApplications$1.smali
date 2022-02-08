.class Lcom/havoc/support/preferences/AppPicker$LoadApplications$1;
.super Ljava/lang/Object;
.source "AppPicker.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/havoc/support/preferences/AppPicker$LoadApplications;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/havoc/support/preferences/AppPicker$LoadApplications;


# direct methods
.method constructor <init>(Lcom/havoc/support/preferences/AppPicker$LoadApplications;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/havoc/support/preferences/AppPicker$LoadApplications$1;->this$1:Lcom/havoc/support/preferences/AppPicker$LoadApplications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 137
    iget-object p0, p0, Lcom/havoc/support/preferences/AppPicker$LoadApplications$1;->this$1:Lcom/havoc/support/preferences/AppPicker$LoadApplications;

    iget-object p0, p0, Lcom/havoc/support/preferences/AppPicker$LoadApplications;->this$0:Lcom/havoc/support/preferences/AppPicker;

    invoke-virtual {p0, p3}, Lcom/havoc/support/preferences/AppPicker;->onLongClick(I)V

    const/4 p0, 0x1

    return p0
.end method
