.class Lcom/android/systemui/qs/customize/TileAdapter$DynamicSpanSizeLookup;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "TileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/TileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DynamicSpanSizeLookup"
.end annotation


# instance fields
.field private mColumns:I

.field final synthetic this$0:Lcom/android/systemui/qs/customize/TileAdapter;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/customize/TileAdapter;)V
    .locals 0

    .line 600
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter$DynamicSpanSizeLookup;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    const/4 p1, 0x4

    .line 601
    iput p1, p0, Lcom/android/systemui/qs/customize/TileAdapter$DynamicSpanSizeLookup;->mColumns:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/qs/customize/TileAdapter$1;)V
    .locals 0

    .line 600
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter$DynamicSpanSizeLookup;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;)V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2

    .line 608
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$DynamicSpanSizeLookup;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->getItemViewType(I)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 609
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$DynamicSpanSizeLookup;->mColumns:I

    :cond_1
    return v0
.end method

.method public setColumns(I)V
    .locals 0

    .line 604
    iput p1, p0, Lcom/android/systemui/qs/customize/TileAdapter$DynamicSpanSizeLookup;->mColumns:I

    return-void
.end method
