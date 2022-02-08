.class public final Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;
.super Lcom/google/protobuf/nano/MessageNano;
.source "SmartspaceProto.java"


# instance fields
.field public card:Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

.field public gsaUpdateTime:J

.field public gsaVersionCode:I

.field public icon:[B

.field public isIconGrayscale:Z

.field public publishTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1109
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1110
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->clear()Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;
    .locals 2

    const/4 v0, 0x0

    .line 1114
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->card:Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    const-wide/16 v0, 0x0

    .line 1115
    iput-wide v0, p0, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->publishTime:J

    .line 1116
    iput-wide v0, p0, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->gsaUpdateTime:J

    const/4 v0, 0x0

    .line 1117
    iput v0, p0, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->gsaVersionCode:I

    .line 1118
    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v1, p0, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->icon:[B

    .line 1119
    iput-boolean v0, p0, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->isIconGrayscale:Z

    const/4 v0, -0x1

    .line 1120
    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .line 1140
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 1141
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->card:Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 1143
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    const/4 v1, 0x2

    .line 1145
    iget-wide v2, p0, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->publishTime:J

    .line 1146
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    .line 1147
    iget-wide v2, p0, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->gsaUpdateTime:J

    .line 1148
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    .line 1149
    iget v2, p0, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->gsaVersionCode:I

    .line 1150
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x5

    .line 1151
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->icon:[B

    .line 1152
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x6

    .line 1153
    iget-boolean p0, p0, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->isIconGrayscale:Z

    .line 1154
    invoke-static {v1, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1163
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_8

    const/16 v1, 0xa

    if-eq v0, v1, :cond_6

    const/16 v1, 0x10

    if-eq v0, v1, :cond_5

    const/16 v1, 0x18

    if-eq v0, v1, :cond_4

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x30

    if-eq v0, v1, :cond_1

    .line 1168
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 1197
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->isIconGrayscale:Z

    goto :goto_0

    .line 1193
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->icon:[B

    goto :goto_0

    .line 1189
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->gsaVersionCode:I

    goto :goto_0

    .line 1185
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->gsaUpdateTime:J

    goto :goto_0

    .line 1181
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->publishTime:J

    goto :goto_0

    .line 1174
    :cond_6
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->card:Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    if-nez v0, :cond_7

    .line 1175
    new-instance v0, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    invoke-direct {v0}, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->card:Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    .line 1177
    :cond_7
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->card:Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :cond_8
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1074
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1127
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->card:Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1128
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_0
    const/4 v0, 0x2

    .line 1130
    iget-wide v1, p0, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->publishTime:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    const/4 v0, 0x3

    .line 1131
    iget-wide v1, p0, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->gsaUpdateTime:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    const/4 v0, 0x4

    .line 1132
    iget v1, p0, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->gsaVersionCode:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    const/4 v0, 0x5

    .line 1133
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->icon:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    const/4 v0, 0x6

    .line 1134
    iget-boolean v1, p0, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->isIconGrayscale:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1135
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
