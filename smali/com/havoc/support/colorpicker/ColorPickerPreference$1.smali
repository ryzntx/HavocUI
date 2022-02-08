.class Lcom/havoc/support/colorpicker/ColorPickerPreference$1;
.super Ljava/lang/Object;
.source "ColorPickerPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/havoc/support/colorpicker/ColorPickerPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
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

    .line 136
    iput-object p1, p0, Lcom/havoc/support/colorpicker/ColorPickerPreference$1;->this$0:Lcom/havoc/support/colorpicker/ColorPickerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/havoc/support/colorpicker/ColorPickerPreference$1;->this$0:Lcom/havoc/support/colorpicker/ColorPickerPreference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/havoc/support/colorpicker/ColorPickerPreference;->showDialog(Landroid/os/Bundle;)V

    return-void
.end method
