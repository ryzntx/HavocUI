.class public final synthetic Lcom/android/systemui/qs/-$$Lambda$QSPanel$1uJzev5mpeNdjjbJsq-_h0rXW88;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/qs/-$$Lambda$QSPanel$1uJzev5mpeNdjjbJsq-_h0rXW88;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/-$$Lambda$QSPanel$1uJzev5mpeNdjjbJsq-_h0rXW88;

    invoke-direct {v0}, Lcom/android/systemui/qs/-$$Lambda$QSPanel$1uJzev5mpeNdjjbJsq-_h0rXW88;-><init>()V

    sput-object v0, Lcom/android/systemui/qs/-$$Lambda$QSPanel$1uJzev5mpeNdjjbJsq-_h0rXW88;->INSTANCE:Lcom/android/systemui/qs/-$$Lambda$QSPanel$1uJzev5mpeNdjjbJsq-_h0rXW88;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    invoke-static {p1}, Lcom/android/systemui/qs/QSPanel;->lambda$getTilesSpecs$3(Lcom/android/systemui/qs/QSPanel$TileRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
