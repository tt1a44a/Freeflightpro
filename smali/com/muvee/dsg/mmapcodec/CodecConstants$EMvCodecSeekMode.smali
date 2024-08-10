.class public final enum Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;
.super Ljava/lang/Enum;
.source "CodecConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmapcodec/CodecConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EMvCodecSeekMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum MV_CSM_CLOSEST:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

.field public static final enum MV_CSM_NEXT:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

.field public static final enum MV_CSM_NONE:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

.field public static final enum MV_CSM_PREVIOUS:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

.field private static final synthetic c:[Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    const-string v1, "MV_CSM_NONE"

    const-string v2, "NONE"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;->MV_CSM_NONE:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    new-instance v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    const-string v1, "MV_CSM_CLOSEST"

    const-string v2, "CLOSEST"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;->MV_CSM_CLOSEST:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    new-instance v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    const-string v1, "MV_CSM_PREVIOUS"

    const-string v2, "PREVIOUS"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;->MV_CSM_PREVIOUS:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    new-instance v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    const-string v1, "MV_CSM_NEXT"

    const-string v2, "NEXT"

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;->MV_CSM_NEXT:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    .line 5
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    sget-object v1, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;->MV_CSM_NONE:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;->MV_CSM_CLOSEST:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;->MV_CSM_PREVIOUS:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;->MV_CSM_NEXT:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;->c:[Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;->a:I

    .line 13
    iput-object p4, p0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;->b:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    return-object v0
.end method

.method public static values()[Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;->c:[Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    invoke-virtual {v0}, [Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;->a:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;->b:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;->b:Ljava/lang/String;

    return-object v0
.end method
