.class public Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;
.super Ljava/lang/Object;
.source "SaveParam.java"


# instance fields
.field public bitRate:I

.field public creationTime:J

.field public frameRate:I

.field public height:I

.field public modificationTime:J

.field public savePath:Ljava/lang/String;

.field public textureHeight:I

.field public textureWidth:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->textureWidth:I

    .line 29
    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->textureHeight:I

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIIJJ)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->textureWidth:I

    .line 29
    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->textureHeight:I

    .line 54
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->savePath:Ljava/lang/String;

    .line 55
    iput p2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->width:I

    .line 56
    iput p3, p0, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->height:I

    .line 57
    iput p4, p0, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->textureWidth:I

    .line 58
    iput p5, p0, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->textureHeight:I

    .line 59
    iput p6, p0, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->bitRate:I

    .line 60
    iput p7, p0, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->frameRate:I

    .line 61
    iput-wide p8, p0, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->creationTime:J

    .line 62
    iput-wide p10, p0, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->modificationTime:J

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIJJ)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->textureWidth:I

    .line 29
    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->textureHeight:I

    .line 68
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->savePath:Ljava/lang/String;

    .line 69
    iput p2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->width:I

    .line 70
    iput p3, p0, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->height:I

    .line 71
    iput p4, p0, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->bitRate:I

    .line 72
    iput p5, p0, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->frameRate:I

    .line 73
    iput-wide p6, p0, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->creationTime:J

    .line 74
    iput-wide p8, p0, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->modificationTime:J

    .line 75
    return-void
.end method


# virtual methods
.method public setBitRate(I)Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;
    .locals 0

    .prologue
    .line 93
    iput p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->bitRate:I

    .line 94
    return-object p0
.end method

.method public setCreationTime(J)Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;
    .locals 1

    .prologue
    .line 103
    iput-wide p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->creationTime:J

    .line 104
    return-object p0
.end method

.method public setFrameRate(I)Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;
    .locals 0

    .prologue
    .line 98
    iput p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->frameRate:I

    .line 99
    return-object p0
.end method

.method public setHeight(I)Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;
    .locals 0

    .prologue
    .line 88
    iput p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->height:I

    .line 89
    return-object p0
.end method

.method public setModificationTime(J)Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;
    .locals 1

    .prologue
    .line 108
    iput-wide p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->modificationTime:J

    .line 109
    return-object p0
.end method

.method public setSavePath(Ljava/lang/String;)Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->savePath:Ljava/lang/String;

    .line 79
    return-object p0
.end method

.method public setTextureHeight(I)Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;
    .locals 0

    .prologue
    .line 118
    iput p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->textureHeight:I

    .line 119
    return-object p0
.end method

.method public setTextureWidth(I)Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;
    .locals 0

    .prologue
    .line 113
    iput p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->textureWidth:I

    .line 114
    return-object p0
.end method

.method public setWidth(I)Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;
    .locals 0

    .prologue
    .line 83
    iput p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->width:I

    .line 84
    return-object p0
.end method
