.class Lcom/havoc/support/preferences/ColorBlendPreference$4;
.super Ljava/lang/Object;
.source "ColorBlendPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    .line 271
    iput-object p1, p0, Lcom/havoc/support/preferences/ColorBlendPreference$4;->this$0:Lcom/havoc/support/preferences/ColorBlendPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 274
    iget-object p0, p0, Lcom/havoc/support/preferences/ColorBlendPreference$4;->this$0:Lcom/havoc/support/preferences/ColorBlendPreference;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/havoc/support/preferences/ColorBlendPreference;->access$302(Lcom/havoc/support/preferences/ColorBlendPreference;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
