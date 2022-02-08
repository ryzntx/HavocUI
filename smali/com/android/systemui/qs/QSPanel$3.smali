.class Lcom/android/systemui/qs/QSPanel$3;
.super Ljava/lang/Object;
.source "QSPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSPanel;->addViewsBelowTiles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSPanel;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel$3;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel$3;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {p0}, Lcom/android/systemui/qs/QSPanel;->access$300(Lcom/android/systemui/qs/QSPanel;)V

    return-void
.end method
