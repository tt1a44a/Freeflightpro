.class public Lcom/parrot/freeflight/core/video/YUV420PlanarComponents;
.super Ljava/lang/Object;
.source "YUV420PlanarComponents.java"


# static fields
.field public static final U_COMPONENT_IDX:I = 0x1

.field public static final V_COMPONENT_IDX:I = 0x2

.field public static final Y_COMPONENT_IDX:I


# instance fields
.field private final mData:[[B

.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    mul-int v0, p1, p2

    .line 26
    .local v0, "length":I
    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/4 v2, 0x0

    new-array v3, v0, [B

    aput-object v3, v1, v2

    const/4 v2, 0x1

    div-int/lit8 v3, v0, 0x4

    new-array v3, v3, [B

    aput-object v3, v1, v2

    const/4 v2, 0x2

    div-int/lit8 v3, v0, 0x4

    new-array v3, v3, [B

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/parrot/freeflight/core/video/YUV420PlanarComponents;->mData:[[B

    .line 27
    iput p1, p0, Lcom/parrot/freeflight/core/video/YUV420PlanarComponents;->mWidth:I

    .line 28
    iput p2, p0, Lcom/parrot/freeflight/core/video/YUV420PlanarComponents;->mHeight:I

    .line 29
    return-void
.end method

.method public constructor <init>([B[B[BII)V
    .locals 2
    .param p1, "yData"    # [B
    .param p2, "uData"    # [B
    .param p3, "vData"    # [B
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x3

    new-array v0, v0, [[B

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    iput-object v0, p0, Lcom/parrot/freeflight/core/video/YUV420PlanarComponents;->mData:[[B

    .line 14
    iput p4, p0, Lcom/parrot/freeflight/core/video/YUV420PlanarComponents;->mWidth:I

    .line 15
    iput p5, p0, Lcom/parrot/freeflight/core/video/YUV420PlanarComponents;->mHeight:I

    .line 16
    return-void
.end method

.method public constructor <init>([[BII)V
    .locals 0
    .param p1, "data"    # [[B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/parrot/freeflight/core/video/YUV420PlanarComponents;->mData:[[B

    .line 20
    iput p2, p0, Lcom/parrot/freeflight/core/video/YUV420PlanarComponents;->mWidth:I

    .line 21
    iput p3, p0, Lcom/parrot/freeflight/core/video/YUV420PlanarComponents;->mHeight:I

    .line 22
    return-void
.end method


# virtual methods
.method public uData()[B
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/YUV420PlanarComponents;->mData:[[B

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public uvHeight()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/parrot/freeflight/core/video/YUV420PlanarComponents;->mHeight:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public uvWidth()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/parrot/freeflight/core/video/YUV420PlanarComponents;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public vData()[B
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/YUV420PlanarComponents;->mData:[[B

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public yData()[B
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/YUV420PlanarComponents;->mData:[[B

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public yHeight()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/parrot/freeflight/core/video/YUV420PlanarComponents;->mHeight:I

    return v0
.end method

.method public yWidth()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/parrot/freeflight/core/video/YUV420PlanarComponents;->mWidth:I

    return v0
.end method
