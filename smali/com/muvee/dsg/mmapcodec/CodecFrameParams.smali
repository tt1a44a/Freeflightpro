.class public Lcom/muvee/dsg/mmapcodec/CodecFrameParams;
.super Ljava/lang/Object;
.source "CodecFrameParams.java"


# instance fields
.field public mBufferAllocation:I

.field public mBufferDataType:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

.field public mBufferInUse_pInBufferData:I

.field public mBufferInUse_pOutBufferData:I

.field public mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

.field public mInBufferData:Ljava/nio/ByteBuffer;

.field public mInBufferSize:I

.field public mInTimeStamp:J

.field public mLastFrame:I

.field public mOutBufferData:Ljava/nio/ByteBuffer;

.field public mOutBufferHeight:I

.field public mOutBufferSize:I

.field public mOutBufferWidth:I

.field public mOutFrameCount:I

.field public mOutMediaHeight:I

.field public mOutMediaWidth:I

.field public mOutRotateAngle:I

.field public mOutTextureId:I

.field public mOutTimeStamp:J

.field public mSeekMode:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v2, p0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInBufferData:Ljava/nio/ByteBuffer;

    .line 12
    iput v1, p0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInBufferSize:I

    .line 13
    iput-wide v4, p0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInTimeStamp:J

    .line 14
    iput v1, p0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mBufferAllocation:I

    .line 15
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;->MV_CSM_NONE:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mSeekMode:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    .line 16
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_UNKNOWN:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    .line 17
    iput-wide v4, p0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutTimeStamp:J

    .line 18
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;->MV_BDT_NONE:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mBufferDataType:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    .line 19
    iput-object v2, p0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferData:Ljava/nio/ByteBuffer;

    .line 20
    iput v1, p0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferSize:I

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutTextureId:I

    .line 22
    iput v1, p0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferWidth:I

    .line 23
    iput v1, p0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferHeight:I

    .line 24
    iput v1, p0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutMediaWidth:I

    .line 25
    iput v1, p0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutMediaHeight:I

    .line 26
    iput v1, p0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutRotateAngle:I

    .line 27
    iput v1, p0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutFrameCount:I

    .line 28
    iput v1, p0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mLastFrame:I

    .line 29
    iput v1, p0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mBufferInUse_pInBufferData:I

    .line 30
    iput v1, p0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mBufferInUse_pOutBufferData:I

    .line 105
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v1, p0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInBufferData:Ljava/nio/ByteBuffer;

    .line 12
    iput v2, p0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInBufferSize:I

    .line 13
    iput-wide v4, p0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInTimeStamp:J

    .line 14
    iput v2, p0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mBufferAllocation:I

    .line 15
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;->MV_CSM_NONE:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mSeekMode:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    .line 16
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_UNKNOWN:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    .line 17
    iput-wide v4, p0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutTimeStamp:J

    .line 18
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;->MV_BDT_NONE:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mBufferDataType:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    .line 19
    iput-object v1, p0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferData:Ljava/nio/ByteBuffer;

    .line 20
    iput v2, p0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferSize:I

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutTextureId:I

    .line 22
    iput v2, p0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferWidth:I

    .line 23
    iput v2, p0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferHeight:I

    .line 24
    iput v2, p0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutMediaWidth:I

    .line 25
    iput v2, p0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutMediaHeight:I

    .line 26
    iput v2, p0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutRotateAngle:I

    .line 27
    iput v2, p0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutFrameCount:I

    .line 28
    iput v2, p0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mLastFrame:I

    .line 29
    iput v2, p0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mBufferInUse_pInBufferData:I

    .line 30
    iput v2, p0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mBufferInUse_pOutBufferData:I

    .line 33
    const/4 v0, 0x2

    move v1, v0

    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_5

    .line 35
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    move v0, v1

    .line 33
    :goto_3
    add-int/lit8 v0, v0, 0x1

    move v1, v0

    goto :goto_0

    .line 38
    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v4, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;->values()[Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    move-result-object v4

    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v4, v0

    invoke-virtual {v3, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_2

    .line 48
    :catch_0
    move-exception v0

    move-object v6, v0

    move v0, v1

    move-object v1, v6

    .line 49
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_3

    .line 41
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v4, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 42
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->values()[Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    move-result-object v4

    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v4, v0

    invoke-virtual {v3, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 50
    :catch_1
    move-exception v0

    move-object v6, v0

    move v0, v1

    move-object v1, v6

    .line 51
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_3

    .line 43
    :cond_3
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v4, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 44
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;->values()[Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    move-result-object v4

    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v4, v0

    invoke-virtual {v3, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 52
    :catch_2
    move-exception v0

    move-object v6, v0

    move v0, v1

    move-object v1, v6

    .line 53
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3

    .line 46
    :cond_4
    :try_start_3
    aget-object v0, p1, v1

    invoke-virtual {v3, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 56
    :cond_5
    return-void
.end method

.method private static a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    aget-object v0, p0, v0

    check-cast v0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;

    .line 69
    invoke-direct {v0, p0}, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->b([Ljava/lang/Object;)V

    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method private b([Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 74
    const/4 v0, 0x2

    move v1, v0

    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_5

    .line 76
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 77
    add-int/lit8 v1, v1, 0x1

    .line 78
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    move v0, v1

    .line 74
    :goto_3
    add-int/lit8 v0, v0, 0x1

    move v1, v0

    goto :goto_0

    .line 79
    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 80
    :cond_1
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;->values()[Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    move-result-object v3

    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v3, v0

    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_2

    .line 89
    :catch_0
    move-exception v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    .line 90
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_3

    .line 82
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->values()[Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    move-result-object v3

    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v3, v0

    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 91
    :catch_1
    move-exception v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    .line 92
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_3

    .line 84
    :cond_3
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 85
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;->values()[Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    move-result-object v3

    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v3, v0

    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 93
    :catch_2
    move-exception v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    .line 94
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3

    .line 87
    :cond_4
    :try_start_3
    aget-object v0, p1, v1

    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 97
    :cond_5
    return-void
.end method

.method private static c([Ljava/lang/Object;)Lcom/muvee/dsg/mmapcodec/CodecFrameParams;
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;

    invoke-direct {v0, p0}, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 59
    aget-object v0, p0, v2

    const-string v1, "create"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-static {p0}, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->c([Ljava/lang/Object;)Lcom/muvee/dsg/mmapcodec/CodecFrameParams;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    .line 61
    :cond_0
    aget-object v0, p0, v2

    const-string/jumbo v1, "setValues"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    invoke-static {p0}, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 64
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
