.class Lcom/havoc/support/preferences/ColorBlendPreference$5;
.super Ljava/lang/Object;
.source "ColorBlendPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/havoc/support/preferences/ColorBlendPreference;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/havoc/support/preferences/ColorBlendPreference;


# direct methods
.method constructor <init>(Lcom/havoc/support/preferences/ColorBlendPreference;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/havoc/support/preferences/ColorBlendPreference$5;->this$0:Lcom/havoc/support/preferences/ColorBlendPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 266
    iget-object p1, p0, Lcom/havoc/support/preferences/ColorBlendPreference$5;->this$0:Lcom/havoc/support/preferences/ColorBlendPreference;

    invoke-static {p1}, Lcom/havoc/support/preferences/ColorBlendPreference;->access$400(Lcom/havoc/support/preferences/ColorBlendPreference;)I

    move-result p2

    iget-object v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference$5;->this$0:Lcom/havoc/support/preferences/ColorBlendPreference;

    invoke-static {v0}, Lcom/havoc/support/preferences/ColorBlendPreference;->access$500(Lcom/havoc/support/preferences/ColorBlendPreference;)I

    move-result v0

    iget-object v1, p0, Lcom/havoc/support/preferences/ColorBlendPreference$5;->this$0:Lcom/havoc/support/preferences/ColorBlendPreference;

    invoke-static {v1}, Lcom/havoc/support/preferences/ColorBlendPreference;->access$600(Lcom/havoc/support/preferences/ColorBlendPreference;)Z

    move-result v1

    invoke-static {p1, p2, v0, v1}, Lcom/havoc/support/preferences/ColorBlendPreference;->access$700(Lcom/havoc/support/preferences/ColorBlendPreference;IIZ)V

    .line 267
    iget-object p1, p0, Lcom/havoc/support/preferences/ColorBlendPreference$5;->this$0:Lcom/havoc/support/preferences/ColorBlendPreference;

    invoke-static {p1}, Lcom/havoc/support/preferences/ColorBlendPreference;->access$800(Lcom/havoc/support/preferences/ColorBlendPreference;)V

    .line 268
    iget-object p0, p0, Lcom/havoc/support/preferences/ColorBlendPreference$5;->this$0:Lcom/havoc/support/preferences/ColorBlendPreference;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/havoc/support/preferences/ColorBlendPreference;->access$302(Lcom/havoc/support/preferences/ColorBlendPreference;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
