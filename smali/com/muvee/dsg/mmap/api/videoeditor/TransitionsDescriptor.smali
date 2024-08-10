.class public Lcom/muvee/dsg/mmap/api/videoeditor/TransitionsDescriptor;
.super Ljava/lang/Object;
.source "TransitionsDescriptor.java"


# instance fields
.field public edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

.field public paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

.field public resourceList:[Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

.field public transitionID:Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public setEdlInterval(Lcom/muvee/dsg/mmap/api/videoeditor/Interval;)Lcom/muvee/dsg/mmap/api/videoeditor/TransitionsDescriptor;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionsDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 51
    return-object p0
.end method

.method public setParamList([Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;)Lcom/muvee/dsg/mmap/api/videoeditor/TransitionsDescriptor;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 61
    return-object p0
.end method

.method public setTransitionID(Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;)Lcom/muvee/dsg/mmap/api/videoeditor/TransitionsDescriptor;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionsDescriptor;->transitionID:Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;

    .line 46
    return-object p0
.end method
