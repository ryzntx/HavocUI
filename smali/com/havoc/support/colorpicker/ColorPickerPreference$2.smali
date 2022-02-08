.class Lcom/havoc/support/colorpicker/ColorPickerPreference$2;
.super Ljava/lang/Object;
.source "ColorPickerPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/havoc/support/colorpicker/ColorPickerPreference;->setDefaultButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/havoc/support/colorpicker/ColorPickerPreference;


# direct methods
.method constructor <init>(Lcom/havoc/support/colorpicker/ColorPickerPreference;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/havoc/support/colorpicker/ColorPickerPreference$2;->this$0:Lcom/havoc/support/colorpicker/ColorPickerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 189
    iget-object p1, p0, Lcom/havoc/support/colorpicker/ColorPickerPreference$2;->this$0:Lcom/havoc/support/colorpicker/ColorPickerPreference;

    invoke-static {p1}, Lcom/havoc/support/colorpicker/ColorPickerPreference;->access$000(Lcom/havoc/support/colorpicker/ColorPickerPreference;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/havoc/support/colorpicker/ColorPickerPreference;->onColorChanged(I)V

    .line 190
    iget-object p0, p0, Lcom/havoc/support/colorpicker/ColorPickerPreference$2;->this$0:Lcom/havoc/support/colorpicker/ColorPickerPreference;

    invoke-static {p0}, Lcom/havoc/support/colorpicker/ColorPickerPreference;->access$100(Lcom/havoc/support/colorpicker/ColorPickerPreference;)Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/havoc/support/util/VibrationUtils;->doHapticFeedback(Landroid/content/Context;I)V

    return-void
.end method
