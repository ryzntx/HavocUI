.class Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;
.super Landroid/os/Handler;
.source "NetworkTraffic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkTraffic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private formatDecimal(J)Ljava/lang/CharSequence;
    .locals 9

    const-wide/32 v0, 0x40000000

    cmp-long v0, p1, v0

    const-string v1, "KB"

    const-string v2, "MB"

    const-string v3, "0.00"

    if-ltz v0, :cond_0

    .line 123
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-float p1, p1

    const/high16 p2, 0x4e800000

    div-float/2addr p1, p2

    float-to-double p1, p1

    .line 124
    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    const-string v1, "GB"

    goto/16 :goto_1

    :cond_0
    const-wide/32 v4, 0x6400000

    cmp-long v0, p1, v4

    const-string v4, "000"

    const/high16 v5, 0x49800000    # 1048576.0f

    if-ltz v0, :cond_1

    .line 126
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-float p1, p1

    div-float/2addr p1, v5

    float-to-double p1, p1

    .line 128
    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v1, v2

    goto :goto_1

    :cond_1
    const-wide/32 v6, 0xa00000

    cmp-long v0, p1, v6

    const-string v6, "00.0"

    if-ltz v0, :cond_2

    .line 130
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-float p1, p1

    div-float/2addr p1, v5

    float-to-double p1, p1

    .line 132
    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-wide/32 v7, 0x100000

    cmp-long v0, p1, v7

    if-ltz v0, :cond_3

    .line 134
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-float p1, p1

    div-float/2addr p1, v5

    float-to-double p1, p1

    .line 136
    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-wide/32 v7, 0x19000

    cmp-long v0, p1, v7

    const/high16 v2, 0x44800000    # 1024.0f

    if-ltz v0, :cond_4

    .line 138
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-float p1, p1

    div-float/2addr p1, v2

    float-to-double p1, p1

    .line 140
    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    const-wide/16 v4, 0x2800

    cmp-long v0, p1, v4

    if-ltz v0, :cond_5

    .line 142
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-float p1, p1

    div-float/2addr p1, v2

    float-to-double p1, p1

    .line 144
    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 146
    :cond_5
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-float p1, p1

    div-float/2addr p1, v2

    float-to-double p1, p1

    .line 148
    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    .line 150
    :goto_1
    new-instance p2, Landroid/text/SpannableString;

    invoke-direct {p2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->getSpeedRelativeSizeSpan()Landroid/text/style/RelativeSizeSpan;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v2, 0x0

    const/16 v3, 0x12

    invoke-virtual {p2, v0, v2, p1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 154
    new-instance p1, Landroid/text/SpannableString;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/S"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 155
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->getUnitRelativeSizeSpan()Landroid/text/style/RelativeSizeSpan;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, p0, v2, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/CharSequence;

    aput-object p2, p0, v2

    const/4 p2, 0x1

    const-string v0, "\n"

    aput-object v0, p0, p2

    const/4 p2, 0x2

    aput-object p1, p0, p2

    .line 157
    invoke-static {p0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private formatOutput(JJ)Ljava/lang/CharSequence;
    .locals 0

    long-to-float p3, p3

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    div-float/2addr p3, p1

    float-to-long p1, p3

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->formatDecimal(J)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private shouldHide(JJJ)Z
    .locals 4

    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->isDisabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    long-to-float p1, p1

    long-to-float p2, p5

    const/high16 p5, 0x447a0000    # 1000.0f

    div-float/2addr p2, p5

    div-float/2addr p1, p2

    float-to-long p5, p1

    const-wide/16 v2, 0x400

    .line 162
    div-long/2addr p5, v2

    long-to-float p1, p3

    div-float/2addr p1, p2

    float-to-long p1, p1

    .line 163
    div-long/2addr p1, v2

    .line 164
    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {p3}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$500(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    .line 165
    invoke-static {p3}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$600(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

    move-result p3

    int-to-long p3, p3

    cmp-long p3, p5, p3

    if-gez p3, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    .line 166
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$600(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

    move-result p0

    int-to-long p3, p0

    cmp-long p0, p1, p3

    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private shouldShowUpload(JJJ)Z
    .locals 2

    long-to-float p1, p1

    long-to-float p2, p5

    const/high16 p5, 0x447a0000    # 1000.0f

    div-float/2addr p2, p5

    div-float/2addr p1, p2

    float-to-long p5, p1

    const-wide/16 v0, 0x400

    .line 170
    div-long/2addr p5, v0

    long-to-float p1, p3

    div-float/2addr p1, p2

    float-to-long p1, p1

    .line 171
    div-long/2addr p1, v0

    .line 173
    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {p3}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$700(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

    move-result p3

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-nez p3, :cond_1

    cmp-long p0, p1, p5

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    move p4, v0

    :goto_0
    return p4

    .line 176
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$700(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_2

    goto :goto_1

    :cond_2
    move p4, v0

    :goto_1
    return p4
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20

    move-object/from16 v7, p0

    .line 53
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, v7, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$000(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-double v2, v0

    .line 55
    iget-object v4, v7, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$100(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-double v4, v4

    const-wide v8, 0x3fee666666666666L    # 0.95

    mul-double/2addr v4, v8

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    move-object/from16 v2, p1

    .line 56
    iget v2, v2, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    return-void

    :cond_0
    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    const-wide v0, 0x7fffffffffffffffL

    :cond_1
    move-wide v8, v0

    .line 65
    iget-object v0, v7, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$002(Lcom/android/systemui/statusbar/policy/NetworkTraffic;J)J

    .line 68
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v10

    .line 69
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v12

    .line 70
    iget-object v0, v7, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$200(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J

    move-result-wide v0

    sub-long v14, v10, v0

    .line 71
    iget-object v0, v7, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$300(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J

    move-result-wide v0

    sub-long v5, v12, v0

    move-object/from16 v0, p0

    move-wide v1, v14

    move-wide v3, v5

    move-wide/from16 v16, v5

    move-wide v5, v8

    .line 73
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->shouldHide(JJJ)Z

    move-result v0

    const/16 v5, 0x8

    const-string v6, ""

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, v7, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, v7, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    move-wide/from16 v18, v12

    move v12, v3

    move-object v13, v6

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    move-wide v1, v14

    move-wide/from16 v18, v12

    move v12, v3

    move-wide/from16 v3, v16

    move-object v13, v6

    move-wide v5, v8

    .line 76
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->shouldShowUpload(JJJ)Z

    move-result v0

    if-eqz v0, :cond_4

    move-wide/from16 v0, v16

    .line 78
    invoke-direct {v7, v8, v9, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->formatOutput(JJ)Ljava/lang/CharSequence;

    move-result-object v0

    .line 81
    iget-object v1, v7, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eq v0, v1, :cond_3

    .line 82
    iget-object v1, v7, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :cond_3
    iget-object v0, v7, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 87
    :cond_4
    invoke-direct {v7, v8, v9, v14, v15}, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->formatOutput(JJ)Ljava/lang/CharSequence;

    move-result-object v0

    .line 90
    iget-object v1, v7, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eq v0, v1, :cond_5

    .line 91
    iget-object v1, v7, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :cond_5
    iget-object v0, v7, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    :goto_0
    iget-object v0, v7, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {v0, v10, v11}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$202(Lcom/android/systemui/statusbar/policy/NetworkTraffic;J)J

    .line 98
    iget-object v0, v7, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$302(Lcom/android/systemui/statusbar/policy/NetworkTraffic;J)J

    .line 99
    iget-object v0, v7, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$400(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 100
    iget-object v0, v7, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_6

    .line 101
    iget-object v0, v7, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$400(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, v7, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$100(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {v0, v12, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 103
    :cond_6
    iget-object v0, v7, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, v7, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method
