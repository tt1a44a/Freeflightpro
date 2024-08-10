.class public Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectsDescriptor;
.super Ljava/lang/Object;
.source "AudioEffectsDescriptor.java"


# instance fields
.field public edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

.field public effectType:Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectType;

.field public paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectType;Lcom/muvee/dsg/mmap/api/videoeditor/Interval;[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectsDescriptor;->effectType:Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectType;

    .line 35
    iput-object p2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectsDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 36
    iput-object p3, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 37
    return-void
.end method


# virtual methods
.method public setEdlInterval(Lcom/muvee/dsg/mmap/api/videoeditor/Interval;)Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectsDescriptor;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectsDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 46
    return-object p0
.end method

.method public setEffectType(Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectType;)Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectsDescriptor;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectsDescriptor;->effectType:Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectType;

    .line 41
    return-object p0
.end method

.method public setParamList([Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;)Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectsDescriptor;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 51
    return-object p0
.end method
