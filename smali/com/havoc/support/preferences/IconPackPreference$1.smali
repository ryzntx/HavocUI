.class Lcom/havoc/support/preferences/IconPackPreference$1;
.super Ljava/lang/Object;
.source "IconPackPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/havoc/support/preferences/IconPackPreference;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/havoc/support/preferences/IconPackPreference;

.field final synthetic val$adapter:Lcom/havoc/support/preferences/IconPackPreference$IconAdapter;

.field final synthetic val$packages:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/havoc/support/preferences/IconPackPreference;Lcom/havoc/support/preferences/IconPackPreference$IconAdapter;Ljava/util/Map;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/havoc/support/preferences/IconPackPreference$1;->this$0:Lcom/havoc/support/preferences/IconPackPreference;

    iput-object p2, p0, Lcom/havoc/support/preferences/IconPackPreference$1;->val$adapter:Lcom/havoc/support/preferences/IconPackPreference$IconAdapter;

    iput-object p3, p0, Lcom/havoc/support/preferences/IconPackPreference$1;->val$packages:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 101
    iget-object p1, p0, Lcom/havoc/support/preferences/IconPackPreference$1;->val$adapter:Lcom/havoc/support/preferences/IconPackPreference$IconAdapter;

    invoke-virtual {p1, p2}, Lcom/havoc/support/preferences/IconPackPreference$IconAdapter;->getItem(I)Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 103
    iget-object p2, p0, Lcom/havoc/support/preferences/IconPackPreference$1;->val$packages:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/havoc/support/preferences/IconPackPreference$IconPackInfo;

    if-eqz p1, :cond_1

    .line 105
    iget-object p2, p0, Lcom/havoc/support/preferences/IconPackPreference$1;->this$0:Lcom/havoc/support/preferences/IconPackPreference;

    iget-object v0, p1, Lcom/havoc/support/preferences/IconPackPreference$IconPackInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 106
    iget-object p2, p0, Lcom/havoc/support/preferences/IconPackPreference$1;->this$0:Lcom/havoc/support/preferences/IconPackPreference;

    iget-object v0, p1, Lcom/havoc/support/preferences/IconPackPreference$IconPackInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 108
    iget-object p0, p0, Lcom/havoc/support/preferences/IconPackPreference$1;->this$0:Lcom/havoc/support/preferences/IconPackPreference;

    iget-object p1, p1, Lcom/havoc/support/preferences/IconPackPreference$IconPackInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/havoc/support/preferences/IconPackPreference;->access$000(Lcom/havoc/support/preferences/IconPackPreference;Ljava/lang/String;)Z

    goto :goto_0

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/havoc/support/preferences/IconPackPreference$1;->this$0:Lcom/havoc/support/preferences/IconPackPreference;

    invoke-static {p1}, Lcom/havoc/support/preferences/IconPackPreference;->access$100(Lcom/havoc/support/preferences/IconPackPreference;)V

    .line 113
    iget-object p0, p0, Lcom/havoc/support/preferences/IconPackPreference$1;->this$0:Lcom/havoc/support/preferences/IconPackPreference;

    const-string p1, ""

    invoke-static {p0, p1}, Lcom/havoc/support/preferences/IconPackPreference;->access$200(Lcom/havoc/support/preferences/IconPackPreference;Ljava/lang/String;)Z

    :cond_1
    :goto_0
    return-void
.end method
