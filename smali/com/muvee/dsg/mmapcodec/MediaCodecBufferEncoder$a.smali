.class final enum Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$a;
.super Ljava/lang/Enum;
.source "MediaCodecBufferEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$a;

.field public static final enum b:Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$a;

.field private static final synthetic c:[Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 211
    new-instance v0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$a;

    const-string v1, "GET_NEXT_FRAME"

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$a;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$a;

    new-instance v0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$a;

    const-string v1, "CLOSE_CODEC"

    invoke-direct {v0, v1, v3}, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$a;->b:Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$a;

    .line 210
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$a;

    sget-object v1, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$a;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$a;->b:Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$a;->c:[Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 210
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$a;
    .locals 1

    .prologue
    .line 210
    const-class v0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$a;

    return-object v0
.end method

.method public static values()[Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$a;
    .locals 1

    .prologue
    .line 210
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$a;->c:[Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$a;

    invoke-virtual {v0}, [Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$a;

    return-object v0
.end method
