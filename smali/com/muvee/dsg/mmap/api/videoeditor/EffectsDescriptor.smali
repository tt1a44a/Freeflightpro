.class public Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;
.super Ljava/lang/Object;
.source "EffectsDescriptor.java"


# instance fields
.field public edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

.field public effectID:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

.field public paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

.field public resourceList:[Lcom/muvee/dsg/mmap/api/videoeditor/Resource;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public setEdlInterval(Lcom/muvee/dsg/mmap/api/videoeditor/Interval;)Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 55
    return-object p0
.end method

.method public setEffectID(Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;)Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->effectID:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    .line 50
    return-object p0
.end method

.method public setParamList([Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;)Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 65
    return-object p0
.end method
