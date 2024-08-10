.class public Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;
.super Ljava/lang/Object;
.source "PreviewParam.java"


# instance fields
.field public frameRate:I

.field public height:I

.field public textureHeight:I

.field public textureWidth:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->textureWidth:I

    .line 29
    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->textureHeight:I

    .line 33
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->textureWidth:I

    .line 29
    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->textureHeight:I

    .line 37
    iput p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->width:I

    .line 38
    iput p2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->height:I

    .line 39
    iput p3, p0, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->frameRate:I

    .line 40
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->textureWidth:I

    .line 29
    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->textureHeight:I

    .line 44
    iput p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->width:I

    .line 45
    iput p2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->height:I

    .line 46
    iput p3, p0, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->frameRate:I

    .line 47
    iput p4, p0, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->textureWidth:I

    .line 48
    iput p5, p0, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->textureHeight:I

    .line 49
    return-void
.end method


# virtual methods
.method public setFrameRate(I)Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->frameRate:I

    .line 63
    return-object p0
.end method

.method public setHeight(I)Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->height:I

    .line 58
    return-object p0
.end method

.method public setTextureHeight(I)Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;
    .locals 0

    .prologue
    .line 72
    iput p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->textureHeight:I

    .line 73
    return-object p0
.end method

.method public setTextureWidth(I)Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;
    .locals 0

    .prologue
    .line 67
    iput p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->textureWidth:I

    .line 68
    return-object p0
.end method

.method public setWidth(I)Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->width:I

    .line 53
    return-object p0
.end method
