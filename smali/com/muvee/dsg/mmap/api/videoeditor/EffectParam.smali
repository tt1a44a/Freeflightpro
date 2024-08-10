.class public Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;
.super Ljava/lang/Object;
.source "EffectParam.java"


# instance fields
.field public numSeg:I

.field public paramId:I

.field public seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

.field public valueScale:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    return-void
.end method

.method public constructor <init>(II[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;)V
    .locals 1

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 183
    iput p2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 184
    iput-object p3, p0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->valueScale:I

    .line 187
    return-void
.end method

.method public constructor <init>(II[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;I)V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 192
    iput p2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 193
    iput-object p3, p0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 194
    iput p4, p0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->valueScale:I

    .line 196
    return-void
.end method


# virtual methods
.method public setNumSeg(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;
    .locals 0

    .prologue
    .line 204
    iput p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 205
    return-object p0
.end method

.method public setParamId(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;
    .locals 0

    .prologue
    .line 199
    iput p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 200
    return-object p0
.end method

.method public setSeg([Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 210
    return-object p0
.end method

.method public setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;
    .locals 0

    .prologue
    .line 214
    iput p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->valueScale:I

    .line 215
    return-object p0
.end method
