.class Lcom/havoc/support/preferences/ColorBlendPreference$8;
.super Ljava/lang/Object;
.source "ColorBlendPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/havoc/support/preferences/ColorBlendPreference;
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

    .line 322
    iput-object p1, p0, Lcom/havoc/support/preferences/ColorBlendPreference$8;->this$0:Lcom/havoc/support/preferences/ColorBlendPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 325
    iget-object v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference$8;->this$0:Lcom/havoc/support/preferences/ColorBlendPreference;

    invoke-static {v0}, Lcom/havoc/support/preferences/ColorBlendPreference;->access$900(Lcom/havoc/support/preferences/ColorBlendPreference;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 326
    new-instance p1, Lcom/havoc/support/colorpicker/ColorPickerDialog;

    iget-object v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference$8;->this$0:Lcom/havoc/support/preferences/ColorBlendPreference;

    .line 327
    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/havoc/support/preferences/ColorBlendPreference$8;->this$0:Lcom/havoc/support/preferences/ColorBlendPreference;

    invoke-static {v2}, Lcom/havoc/support/preferences/ColorBlendPreference;->access$000(Lcom/havoc/support/preferences/ColorBlendPreference;)I

    move-result v2

    invoke-direct {p1, v0, v2, v1}, Lcom/havoc/support/colorpicker/ColorPickerDialog;-><init>(Landroid/content/Context;IZ)V

    .line 328
    iget-object p0, p0, Lcom/havoc/support/preferences/ColorBlendPreference$8;->this$0:Lcom/havoc/support/preferences/ColorBlendPreference;

    invoke-static {p0}, Lcom/havoc/support/preferences/ColorBlendPreference;->access$1000(Lcom/havoc/support/preferences/ColorBlendPreference;)Lcom/havoc/support/colorpicker/ColorPickerDialog$OnColorChangedListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/havoc/support/colorpicker/ColorPickerDialog;->setOnColorChangedListener(Lcom/havoc/support/colorpicker/ColorPickerDialog$OnColorChangedListener;)V

    .line 329
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference$8;->this$0:Lcom/havoc/support/preferences/ColorBlendPreference;

    invoke-static {v0}, Lcom/havoc/support/preferences/ColorBlendPreference;->access$1100(Lcom/havoc/support/preferences/ColorBlendPreference;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 331
    new-instance p1, Lcom/havoc/support/colorpicker/ColorPickerDialog;

    iget-object v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference$8;->this$0:Lcom/havoc/support/preferences/ColorBlendPreference;

    .line 332
    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/havoc/support/preferences/ColorBlendPreference$8;->this$0:Lcom/havoc/support/preferences/ColorBlendPreference;

    invoke-static {v2}, Lcom/havoc/support/preferences/ColorBlendPreference;->access$200(Lcom/havoc/support/preferences/ColorBlendPreference;)I

    move-result v2

    invoke-direct {p1, v0, v2, v1}, Lcom/havoc/support/colorpicker/ColorPickerDialog;-><init>(Landroid/content/Context;IZ)V

    .line 333
    iget-object p0, p0, Lcom/havoc/support/preferences/ColorBlendPreference$8;->this$0:Lcom/havoc/support/preferences/ColorBlendPreference;

    invoke-static {p0}, Lcom/havoc/support/preferences/ColorBlendPreference;->access$1200(Lcom/havoc/support/preferences/ColorBlendPreference;)Lcom/havoc/support/colorpicker/ColorPickerDialog$OnColorChangedListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/havoc/support/colorpicker/ColorPickerDialog;->setOnColorChangedListener(Lcom/havoc/support/colorpicker/ColorPickerDialog$OnColorChangedListener;)V

    .line 334
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference$8;->this$0:Lcom/havoc/support/preferences/ColorBlendPreference;

    invoke-static {v0}, Lcom/havoc/support/preferences/ColorBlendPreference;->access$1300(Lcom/havoc/support/preferences/ColorBlendPreference;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x32

    if-ne p1, v0, :cond_4

    .line 336
    iget-object p1, p0, Lcom/havoc/support/preferences/ColorBlendPreference$8;->this$0:Lcom/havoc/support/preferences/ColorBlendPreference;

    invoke-static {p1}, Lcom/havoc/support/preferences/ColorBlendPreference;->access$1400(Lcom/havoc/support/preferences/ColorBlendPreference;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/havoc/support/preferences/ColorBlendPreference;->access$1402(Lcom/havoc/support/preferences/ColorBlendPreference;Z)Z

    .line 337
    iget-object p1, p0, Lcom/havoc/support/preferences/ColorBlendPreference$8;->this$0:Lcom/havoc/support/preferences/ColorBlendPreference;

    invoke-static {p1}, Lcom/havoc/support/preferences/ColorBlendPreference;->access$1500(Lcom/havoc/support/preferences/ColorBlendPreference;)Landroid/widget/SeekBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    const/16 v0, 0x19

    if-lt p1, v0, :cond_2

    const/16 v0, 0x4b

    if-le p1, v0, :cond_3

    .line 340
    :cond_2
    iget-object p1, p0, Lcom/havoc/support/preferences/ColorBlendPreference$8;->this$0:Lcom/havoc/support/preferences/ColorBlendPreference;

    invoke-static {p1}, Lcom/havoc/support/preferences/ColorBlendPreference;->access$1500(Lcom/havoc/support/preferences/ColorBlendPreference;)Landroid/widget/SeekBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 342
    :cond_3
    iget-object p0, p0, Lcom/havoc/support/preferences/ColorBlendPreference$8;->this$0:Lcom/havoc/support/preferences/ColorBlendPreference;

    invoke-static {p0}, Lcom/havoc/support/preferences/ColorBlendPreference;->access$1600(Lcom/havoc/support/preferences/ColorBlendPreference;)V

    goto :goto_0

    .line 343
    :cond_4
    iget-object v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference$8;->this$0:Lcom/havoc/support/preferences/ColorBlendPreference;

    invoke-static {v0}, Lcom/havoc/support/preferences/ColorBlendPreference;->access$1700(Lcom/havoc/support/preferences/ColorBlendPreference;)Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_5

    .line 345
    iget-object p1, p0, Lcom/havoc/support/preferences/ColorBlendPreference$8;->this$0:Lcom/havoc/support/preferences/ColorBlendPreference;

    invoke-static {p1}, Lcom/havoc/support/preferences/ColorBlendPreference;->access$1500(Lcom/havoc/support/preferences/ColorBlendPreference;)Landroid/widget/SeekBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 346
    iget-object p0, p0, Lcom/havoc/support/preferences/ColorBlendPreference$8;->this$0:Lcom/havoc/support/preferences/ColorBlendPreference;

    invoke-static {p0}, Lcom/havoc/support/preferences/ColorBlendPreference;->access$1600(Lcom/havoc/support/preferences/ColorBlendPreference;)V

    goto :goto_0

    .line 348
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DialogPreviewClickListener not prepared for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ColorBlendPreference"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
