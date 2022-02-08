.class final Lcom/android/settingslib/graph/FullCircleBatteryDrawable$postInvalidate$1;
.super Ljava/lang/Object;
.source "FullCircleBatteryDrawable.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->postInvalidate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/graph/FullCircleBatteryDrawable;


# direct methods
.method constructor <init>(Lcom/android/settingslib/graph/FullCircleBatteryDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable$postInvalidate$1;->this$0:Lcom/android/settingslib/graph/FullCircleBatteryDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable$postInvalidate$1;->this$0:Lcom/android/settingslib/graph/FullCircleBatteryDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
