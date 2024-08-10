.class public Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;
.super Ljava/lang/Object;
.source "AdvanceVideoMixer.java"

# interfaces
.implements Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$OnAudioDataAvaiableListener;
.implements Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$VmOnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a;
    }
.end annotation


# instance fields
.field a:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTransitionFrame;

.field private d:F

.field private e:F

.field private f:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/view/SurfaceHolder;

.field private j:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;

.field private k:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;

.field private l:Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;

.field private m:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;

.field private n:J

.field private o:J

.field private p:Lcom/muvee/dsg/mmas/api/advancevideomixer/OutputParam;

.field private q:Lcom/muvee/dsg/mmas/api/advancevideomixer/OnProgressUpdateListener;

.field private r:J

.field private s:Lcom/muvee/dsg/mmas/api/advancevideomixer/OnCanAddStateChangedListener;

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/muvee/dsg/mmas/api/advancevideomixer/VmPlayer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/muvee/dsg/mmas/api/advancevideomixer/VmPlayer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private x:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->d:F

    .line 27
    iput v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->e:F

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->g:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->h:Ljava/util/List;

    .line 47
    new-instance v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a;-><init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$1;)V

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a;

    .line 56
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->r:J

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->b:Ljava/util/List;

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->t:Ljava/util/List;

    .line 642
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->u:Ljava/util/Map;

    .line 715
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->v:Ljava/util/List;

    .line 767
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->w:Ljava/util/Map;

    .line 63
    new-instance v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;

    invoke-direct {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->m:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;

    .line 64
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 108
    new-instance v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->p:Lcom/muvee/dsg/mmas/api/advancevideomixer/OutputParam;

    iget v1, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/OutputParam;->width:I

    iget-object v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->p:Lcom/muvee/dsg/mmas/api/advancevideomixer/OutputParam;

    iget v2, v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/OutputParam;->height:I

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;-><init>(II)V

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->l:Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;

    .line 110
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->l:Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->i:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;->createSurface(Ljava/lang/Object;)V

    .line 112
    new-instance v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;

    sget-object v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$TextureType;->EXTERNAL:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$TextureType;

    invoke-direct {v0, v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;-><init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$TextureType;)V

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->j:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;

    .line 113
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->j:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->validate()V

    .line 115
    new-instance v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;

    sget-object v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$TextureType;->NORMAL:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$TextureType;

    invoke-direct {v0, v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;-><init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$TextureType;)V

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->k:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;

    .line 116
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->k:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->validate()V

    .line 117
    return-void
.end method

.method static synthetic a(Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->a()V

    return-void
.end method

.method static synthetic a(Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->a(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic a(Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;Ljava/util/List;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->a(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmPlayer;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmPlayer;JJ)V
    .locals 9

    .prologue
    .line 658
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 691
    :cond_0
    return-void

    .line 662
    :cond_1
    const-string v0, "com.muvee.dsg.mmas.api.advancevideomixer.AdvanceVideoMixer"

    const-string v1, "::sync: mediaPlayer1=%s,mediaPlayer2=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const-string v0, "com.muvee.dsg.mmas.api.advancevideomixer.AdvanceVideoMixer"

    const-string v1, "::sync: currentTimeUs1=%d,currentTimeUs2=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 667
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->u:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    neg-long v0, v0

    sub-long v2, v0, p3

    .line 668
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmPlayer;

    .line 669
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->u:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v6, v2

    .line 670
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->u:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 672
    :cond_2
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->u:Ljava/util/Map;

    neg-long v2, p5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    :goto_1
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmPlayer;

    .line 689
    const-string v2, "com.muvee.dsg.mmas.api.advancevideomixer.AdvanceVideoMixer"

    const-string v3, "::sync: %s,%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->u:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 674
    :cond_3
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 676
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->u:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    neg-long v0, v0

    sub-long v2, v0, p5

    .line 677
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmPlayer;

    .line 678
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->u:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v6, v2

    .line 679
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->u:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 681
    :cond_4
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->u:Ljava/util/Map;

    neg-long v2, p3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 684
    :cond_5
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->u:Ljava/util/Map;

    neg-long v2, p3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->u:Ljava/util/Map;

    neg-long v2, p5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 14

    .prologue
    .line 197
    iget-object v4, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->b:Ljava/util/List;

    monitor-enter v4

    .line 198
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 199
    iget-object v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 200
    iget-wide v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->n:J

    iget-wide v6, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->o:J

    sub-long v6, v0, v6

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->n:J

    .line 202
    :cond_0
    iput-wide v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->o:J

    .line 204
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;

    .line 205
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->setPlay(Z)V

    .line 206
    iget-wide v6, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->r:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-lez v1, :cond_2

    .line 207
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    iget-wide v6, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->n:J

    iget-wide v8, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->r:J

    sub-long/2addr v6, v8

    long-to-float v5, v6

    mul-float/2addr v3, v5

    iget v5, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->e:F

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v6

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v6

    div-float/2addr v3, v5

    sub-float/2addr v1, v3

    .line 208
    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->setVolumeLevel(F)V

    goto :goto_0

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 205
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 210
    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    :try_start_1
    iget-wide v6, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->n:J

    long-to-float v3, v6

    mul-float/2addr v1, v3

    iget v3, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->d:F

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v5

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v5

    div-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->setVolumeLevel(F)V

    goto :goto_0

    .line 214
    :cond_3
    const/4 v2, 0x0

    .line 215
    iget-object v5, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->g:Ljava/util/List;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    :try_start_2
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    .line 217
    iget-object v7, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->t:Ljava/util/List;

    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 218
    :try_start_3
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->u:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 219
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->u:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 220
    if-nez v1, :cond_b

    .line 221
    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v3, v1

    .line 223
    :goto_3
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->w:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 224
    if-nez v1, :cond_4

    .line 225
    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 227
    :cond_4
    iget-wide v8, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->n:J

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->x:J

    sub-long/2addr v10, v12

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    add-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    cmp-long v1, v8, v10

    if-ltz v1, :cond_a

    .line 228
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->t:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 229
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->t:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    const/4 v1, 0x1

    .line 241
    :goto_4
    iget-object v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->p:Lcom/muvee/dsg/mmas/api/advancevideomixer/OutputParam;

    iget-boolean v2, v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/OutputParam;->loopVideo:Z

    if-nez v2, :cond_5

    invoke-virtual {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->isLooped()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->t:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 242
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->t:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 243
    const/4 v1, 0x1

    .line 245
    :cond_5
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 247
    :try_start_4
    iget-object v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->p:Lcom/muvee/dsg/mmas/api/advancevideomixer/OutputParam;

    iget-boolean v2, v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/OutputParam;->loopVideo:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->b:Ljava/util/List;

    .line 248
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->t:Ljava/util/List;

    .line 249
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 250
    invoke-virtual {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->isLooped()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 251
    invoke-virtual {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->pause()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_6
    move v2, v1

    .line 254
    goto/16 :goto_2

    .line 234
    :cond_7
    :try_start_5
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->t:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 235
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->t:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    const/4 v1, 0x1

    goto :goto_4

    .line 245
    :catchall_1
    move-exception v0

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    .line 255
    :catchall_2
    move-exception v0

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_8
    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 256
    :try_start_9
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a;

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 257
    if-eqz v2, :cond_9

    .line 258
    :try_start_a
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->s:Lcom/muvee/dsg/mmas/api/advancevideomixer/OnCanAddStateChangedListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a;->a(Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a;)Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;

    move-result-object v0

    sget-object v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;->c:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;

    if-ne v0, v2, :cond_9

    .line 259
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->s:Lcom/muvee/dsg/mmas/api/advancevideomixer/OnCanAddStateChangedListener;

    iget-object v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->t:Ljava/util/List;

    invoke-interface {v0, v2}, Lcom/muvee/dsg/mmas/api/advancevideomixer/OnCanAddStateChangedListener;->onCanAddStateChanged(Ljava/util/List;)V

    .line 262
    :cond_9
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 264
    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 266
    const-string v0, "AdvanceVideoMixer.CURRENT_TIME"

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->getHandler(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xa

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 267
    return-void

    .line 262
    :catchall_3
    move-exception v0

    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_a
    move v1, v2

    goto/16 :goto_4

    :cond_b
    move-object v3, v1

    goto/16 :goto_3
.end method

.method private a(Ljava/lang/String;J)V
    .locals 6

    .prologue
    .line 424
    iget-wide v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->n:J

    iput-wide v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->r:J

    .line 426
    const/high16 v0, 0x447a0000    # 1000.0f

    iput v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->e:F

    .line 428
    new-instance v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-direct {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;-><init>()V

    .line 429
    invoke-virtual {v0, p1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->init(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p0, v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->addMediaPlayer(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)V

    .line 433
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->l:Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;

    const-string v2, "AdvanceVideoMixer.GL_THREAD"

    invoke-virtual {v0, v1, v2}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->setEglSetup(Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;Ljava/lang/String;)V

    .line 434
    invoke-virtual {v0, p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->setOnFrameAvailableListener(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$VmOnFrameAvailableListener;)V

    .line 435
    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, p2

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->play(ZZJ)V

    .line 437
    new-instance v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$9;

    invoke-direct {v1, p0, v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$9;-><init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->setOnCompleListener(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$OnCompleListener;)V

    .line 468
    invoke-virtual {p0, v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->addToOutput(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;)V

    .line 469
    return-void
.end method

.method private declared-synchronized a(Ljava/util/List;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 186
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 188
    :try_start_1
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a;

    sget-object v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;->c:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;

    invoke-static {v0, v2}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a;->a(Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a;Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;)Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;

    .line 189
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 190
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    :cond_0
    monitor-exit p0

    return-void

    .line 190
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 185
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Z
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->p:Lcom/muvee/dsg/mmas/api/advancevideomixer/OutputParam;

    iget-boolean v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/OutputParam;->loopVideo:Z

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->p:Lcom/muvee/dsg/mmas/api/advancevideomixer/OutputParam;

    iget-boolean v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/OutputParam;->loopVideo:Z

    .line 273
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->isLooped()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->f:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;

    .line 122
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 124
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 125
    invoke-direct {p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->c()V

    .line 128
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    .line 129
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->l:Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;

    const-string v4, "AdvanceVideoMixer.GL_THREAD"

    invoke-virtual {v0, v1, v4}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->setEglSetup(Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0, p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->setOnFrameAvailableListener(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$VmOnFrameAvailableListener;)V

    .line 132
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->w:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 133
    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v7, v2, v4, v5}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->play(ZZJ)V

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {v0, v7, v2, v10, v11}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->play(ZZJ)V

    goto :goto_0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;

    .line 142
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->w:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 144
    if-eqz v0, :cond_2

    .line 145
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    new-instance v6, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$4;

    invoke-direct {v6, p0, v8}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$4;-><init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;Ljava/util/List;)V

    move v3, v2

    invoke-virtual/range {v1 .. v6}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->prepare(ZZJLcom/muvee/dsg/mmas/api/advancevideomixer/OnComponentPreparedListener;)V

    .line 161
    :goto_2
    invoke-virtual {v1, p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->setOnAudioDataAvaiableListener(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$OnAudioDataAvaiableListener;)V

    goto :goto_1

    .line 153
    :cond_2
    new-instance v6, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$5;

    invoke-direct {v6, p0, v8}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$5;-><init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;Ljava/util/List;)V

    move v3, v2

    move-wide v4, v10

    invoke-virtual/range {v1 .. v6}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->prepare(ZZJLcom/muvee/dsg/mmas/api/advancevideomixer/OnComponentPreparedListener;)V

    goto :goto_2

    .line 164
    :cond_3
    new-instance v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;

    invoke-direct {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->f:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;

    .line 165
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->f:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    move v2, v7

    :cond_4
    invoke-virtual {v0, v2}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->setScopeEnableAudio(Z)V

    .line 166
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->f:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->f:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->p:Lcom/muvee/dsg/mmas/api/advancevideomixer/OutputParam;

    iget-object v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->q:Lcom/muvee/dsg/mmas/api/advancevideomixer/OnProgressUpdateListener;

    invoke-virtual {v0, v1, v2}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->init(Lcom/muvee/dsg/mmas/api/advancevideomixer/OutputParam;Lcom/muvee/dsg/mmas/api/advancevideomixer/OnProgressUpdateListener;)V

    .line 168
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->f:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->l:Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;

    const-string v2, "AdvanceVideoMixer.GL_THREAD"

    invoke-virtual {v0, v1, v2}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->setEglSetup(Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->f:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;

    new-instance v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$6;

    invoke-direct {v1, p0, v8}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$6;-><init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->startRecording(Lcom/muvee/dsg/mmas/api/advancevideomixer/OnComponentPreparedListener;)V

    .line 181
    return-void
.end method

.method static synthetic b(Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->b()V

    return-void
.end method

.method static synthetic c(Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->f:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;

    return-object v0
.end method

.method private c()V
    .locals 6

    .prologue
    .line 313
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->x:J

    .line 315
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmPlayer;

    .line 316
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->u:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 317
    iget-object v3, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->w:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 318
    if-nez v0, :cond_1

    .line 319
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 322
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v4

    .line 323
    iget-wide v4, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->x:J

    cmp-long v3, v4, v0

    if-lez v3, :cond_0

    .line 324
    iput-wide v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->x:J

    goto :goto_0

    .line 328
    :cond_2
    return-void
.end method

.method static synthetic d(Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;)Ljava/util/List;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;)Ljava/util/List;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;)Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->i:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic g(Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->l:Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;

    return-object v0
.end method

.method static synthetic h(Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;)Ljava/util/List;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->v:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public OnFrameAvailable(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 491
    iget-object v3, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->b:Ljava/util/List;

    monitor-enter v3

    .line 493
    const/4 v2, 0x1

    .line 495
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->m:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->mediaPlayers()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;

    .line 496
    invoke-interface {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;->isFrameReady()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 502
    :goto_0
    if-eqz v0, :cond_3

    .line 504
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->m:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->hasMedia()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 506
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->l:Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;

    iget-object v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->i:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v2}, Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;->makeCurrent(Ljava/lang/Object;)V

    .line 507
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->i:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 508
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->i:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 510
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;

    .line 511
    invoke-interface {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;->prepare()V

    goto :goto_1

    .line 533
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 514
    :cond_1
    const/4 v0, 0x0

    const/4 v5, 0x0

    :try_start_1
    invoke-static {v0, v5, v2, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 515
    invoke-static {}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->clearFrame()V

    .line 517
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->m:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;

    iget-object v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->b:Ljava/util/List;

    iget-object v4, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->j:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;

    iget-object v5, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->k:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;

    invoke-virtual {v0, v2, v4, v5}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->drawFrames(Ljava/util/List;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;)V

    .line 518
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->l:Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;

    iget-object v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->i:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v2}, Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;->swapBuffers(Ljava/lang/Object;)Z

    .line 520
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->f:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;

    iget-wide v4, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->n:J

    invoke-virtual {v0, v4, v5}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->beforeDrawFrame(J)V

    .line 521
    invoke-static {}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->clearFrame()V

    .line 523
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->m:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;

    iget-object v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->b:Ljava/util/List;

    iget-object v4, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->j:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;

    iget-object v5, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->k:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;

    invoke-virtual {v0, v2, v4, v5}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->drawFrames(Ljava/util/List;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;)V

    .line 524
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->f:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->afterDrawFrame()V

    .line 527
    :cond_2
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    .line 528
    invoke-virtual {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->getRenderLock()Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$RenderLock;

    move-result-object v4

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 529
    :try_start_2
    invoke-virtual {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->getRenderLock()Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$RenderLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 530
    monitor-exit v4

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v0

    .line 533
    :cond_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 535
    return v1

    :cond_4
    move v0, v2

    goto/16 :goto_0
.end method

.method public addAudioPlayer(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;)V
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    return-void
.end method

.method public addMediaPlayer(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)V
    .locals 2

    .prologue
    .line 67
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->g:Ljava/util/List;

    monitor-enter v1

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    monitor-exit v1

    .line 70
    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addToOutput(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;)V
    .locals 4

    .prologue
    .line 279
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->b:Ljava/util/List;

    monitor-enter v1

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    invoke-virtual {p0, p1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->resume(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;)V

    .line 283
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->m:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;

    iget-object v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->b:Ljava/util/List;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->onAddToOutputListChanged(Ljava/util/List;Z)V

    .line 284
    monitor-exit v1

    .line 285
    return-void

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addTransition(II)V
    .locals 3

    .prologue
    .line 616
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    .line 617
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->g:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    .line 619
    new-instance v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTransitionFrame;

    invoke-direct {v2, v0, v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTransitionFrame;-><init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;)V

    iput-object v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->c:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTransitionFrame;

    .line 626
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->c:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTransitionFrame;

    invoke-virtual {p0, v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->addToOutput(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;)V

    .line 627
    return-void
.end method

.method public clearSurface(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 822
    const-string v0, "AdvanceVideoMixer.GL_THREAD"

    new-instance v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$2;

    invoke-direct {v1, p0, p1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$2;-><init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;Landroid/view/SurfaceHolder;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 835
    return-void
.end method

.method public getNumberOfOutputMedia()I
    .locals 2

    .prologue
    .line 357
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->b:Ljava/util/List;

    monitor-enter v1

    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 359
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getOnCanAddStateChangedListener()Lcom/muvee/dsg/mmas/api/advancevideomixer/OnCanAddStateChangedListener;
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->s:Lcom/muvee/dsg/mmas/api/advancevideomixer/OnCanAddStateChangedListener;

    return-object v0
.end method

.method public onAudioDataAvaiable([BII)V
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->f:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;

    invoke-virtual {v0, p1, p2, p3}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->addAudioFrame([BII)V

    .line 610
    return-void
.end method

.method public pause(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;)V
    .locals 4

    .prologue
    .line 331
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->u:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 333
    const/4 v1, 0x1

    .line 335
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmPlayer;

    .line 336
    iget-object v3, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    const/4 v0, 0x0

    .line 343
    :goto_0
    if-eqz v0, :cond_3

    .line 344
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmPlayer;

    .line 345
    instance-of v2, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;

    if-eqz v2, :cond_1

    .line 346
    check-cast v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;

    .line 347
    invoke-interface {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;->pause()V

    goto :goto_1

    .line 352
    :cond_2
    invoke-interface {p1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;->pause()V

    .line 354
    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public playSynced(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;J)V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 718
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->u:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long v2, p2, v0

    .line 719
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmPlayer;

    .line 720
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->u:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v2, v6

    .line 721
    const-string v1, "com.muvee.dsg.mmas.api.advancevideomixer.AdvanceVideoMixer"

    const-string v5, "::playSynced: seekUs=%d,shift=%d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-ltz v1, :cond_0

    .line 723
    invoke-interface {v0, v10, v11, v6, v7}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmPlayer;->play(ZZJ)V

    goto :goto_0

    .line 725
    :cond_0
    new-instance v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$10;

    invoke-direct {v1, p0, v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$10;-><init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmPlayer;)V

    .line 735
    iget-object v5, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->v:Ljava/util/List;

    monitor-enter v5

    .line 736
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->v:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 737
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 738
    const-string v0, "AdvanceVideoMixer.SYNC_PLAY_THREAD"

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->getHandler(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v0

    neg-long v6, v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 737
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 741
    :cond_1
    return-void
.end method

.method public removeAudioPlayer(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;)V
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 605
    return-void
.end method

.method public removeFromOutput(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;)V
    .locals 7

    .prologue
    .line 363
    iget-object v6, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->b:Ljava/util/List;

    monitor-enter v6

    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 365
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 366
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->m:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;

    iget-object v3, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->b:Ljava/util/List;

    const/4 v5, 0x1

    move-object v2, p1

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->onRemoveFromOutput(ILcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;Ljava/util/List;Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;Z)V

    .line 367
    monitor-exit v6

    .line 368
    return-void

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeMediaPlayer(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Z
    .locals 2

    .prologue
    .line 73
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->g:Ljava/util/List;

    monitor-enter v1

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeOutputSurface(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 476
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->i:Landroid/view/SurfaceHolder;

    .line 478
    return-void
.end method

.method public removeTransition(II)V
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->c:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTransitionFrame;

    invoke-virtual {p0, v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->removeFromOutput(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;)V

    .line 636
    return-void
.end method

.method public resume(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;)V
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    .line 288
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->u:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 289
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmPlayer;

    .line 290
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->u:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 291
    iget-object v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->w:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 292
    if-nez v2, :cond_1

    .line 293
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 295
    :cond_1
    const-string v4, "com.muvee.dsg.mmas.api.advancevideomixer.AdvanceVideoMixer"

    const-string v5, "::resume: sync=%d,%d,%d,min=%d"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    const/4 v7, 0x2

    iget-wide v8, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->n:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-wide v8, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->x:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    instance-of v4, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;

    if-eqz v4, :cond_0

    .line 298
    check-cast v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;

    .line 299
    iget-wide v4, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->n:J

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->x:J

    sub-long/2addr v6, v8

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v6, v8

    mul-long/2addr v6, v10

    cmp-long v4, v4, v6

    if-ltz v4, :cond_2

    .line 300
    invoke-interface {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;->resume()V

    goto :goto_0

    .line 302
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->x:J

    sub-long/2addr v4, v6

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    mul-long/2addr v4, v10

    iget-wide v6, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->n:J

    sub-long/2addr v4, v6

    invoke-interface {v0, v4, v5}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;->resumeAfter(J)V

    goto :goto_0

    .line 307
    :cond_3
    invoke-interface {p1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;->resume()V

    .line 310
    :cond_4
    return-void
.end method

.method public seekSynced(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;J)V
    .locals 12

    .prologue
    .line 744
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->u:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long v2, p2, v0

    .line 745
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmPlayer;

    .line 746
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->u:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v2, v6

    .line 747
    const-string v1, "com.muvee.dsg.mmas.api.advancevideomixer.AdvanceVideoMixer"

    const-string v5, "::seekSynced: seekUs=%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-ltz v1, :cond_0

    .line 749
    invoke-interface {v0, v6, v7}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmPlayer;->seek(J)V

    goto :goto_0

    .line 751
    :cond_0
    const-wide/16 v6, 0x0

    invoke-interface {v0, v6, v7}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmPlayer;->seek(J)V

    goto :goto_0

    .line 754
    :cond_1
    return-void
.end method

.method public setOnCanAddStateChangedListener(Lcom/muvee/dsg/mmas/api/advancevideomixer/OnCanAddStateChangedListener;)V
    .locals 0

    .prologue
    .line 818
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->s:Lcom/muvee/dsg/mmas/api/advancevideomixer/OnCanAddStateChangedListener;

    .line 819
    return-void
.end method

.method public setOutputSurface(Landroid/view/SurfaceHolder;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->i:Landroid/view/SurfaceHolder;

    .line 473
    return-void
.end method

.method public setStartTime(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmPlayer;J)V
    .locals 6

    .prologue
    .line 771
    const-string v0, "com.muvee.dsg.mmas.api.advancevideomixer.AdvanceVideoMixer"

    const-string v1, "::setStartTime: %s,%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->w:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    return-void
.end method

.method public setTransition(F)V
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->c:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTransitionFrame;

    invoke-virtual {v0, p1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTransitionFrame;->setFactor(F)V

    .line 640
    return-void
.end method

.method public startRecording(Lcom/muvee/dsg/mmas/api/advancevideomixer/OutputParam;Lcom/muvee/dsg/mmas/api/advancevideomixer/OnProgressUpdateListener;)V
    .locals 3

    .prologue
    .line 81
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a;

    monitor-enter v1

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a;

    sget-object v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;

    invoke-static {v0, v2}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a;->a(Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a;Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;)Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;

    .line 83
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->p:Lcom/muvee/dsg/mmas/api/advancevideomixer/OutputParam;

    .line 86
    iput-object p2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->q:Lcom/muvee/dsg/mmas/api/advancevideomixer/OnProgressUpdateListener;

    .line 89
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->r:J

    .line 90
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->n:J

    .line 91
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->o:J

    .line 93
    const-string v0, "AdvanceVideoMixer.CURRENT_TIME"

    new-instance v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$1;

    invoke-direct {v1, p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$1;-><init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 99
    const-string v0, "AdvanceVideoMixer.GL_THREAD"

    new-instance v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$3;

    invoke-direct {v1, p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$3;-><init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 105
    return-void

    .line 83
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public stopRecording(Ljava/lang/String;J)V
    .locals 8

    .prologue
    .line 373
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a;

    monitor-enter v1

    .line 374
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a;

    sget-object v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;->d:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;

    invoke-static {v0, v2}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a;->a(Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a;Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;)Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;

    .line 375
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    if-nez p1, :cond_1

    .line 378
    const-string v0, "AdvanceVideoMixer.GL_THREAD"

    new-instance v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$7;

    invoke-direct {v1, p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$7;-><init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 416
    :cond_0
    return-void

    .line 375
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 397
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 398
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    .line 399
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    new-instance v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$8;

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$8;-><init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;Ljava/util/List;Ljava/lang/String;J)V

    invoke-virtual {v3, v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->stop(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$OnCompleListener;)V

    goto :goto_0
.end method

.method public stopSynced()V
    .locals 5

    .prologue
    .line 757
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmPlayer;

    .line 758
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmPlayer;->stop(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$OnCompleListener;)V

    .line 759
    iget-object v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->v:Ljava/util/List;

    monitor-enter v2

    .line 760
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 761
    const-string v4, "AdvanceVideoMixer.SYNC_PLAY_THREAD"

    invoke-static {v4}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->getHandler(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 763
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 765
    :cond_1
    return-void
.end method

.method public sync(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmPlayer;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmPlayer;)V
    .locals 8

    .prologue
    .line 650
    invoke-interface {p1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmPlayer;->getCurrentTimeUs()J

    move-result-wide v4

    .line 651
    invoke-interface {p2}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmPlayer;->getCurrentTimeUs()J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 653
    invoke-direct/range {v1 .. v7}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmPlayer;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmPlayer;JJ)V

    .line 654
    return-void
.end method

.method public syncAllAtStarTime()V
    .locals 12

    .prologue
    const/4 v1, 0x0

    const-wide/16 v10, 0x0

    .line 777
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 779
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 780
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    .line 781
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->w:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 782
    if-nez v0, :cond_5

    .line 783
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v8, v0

    .line 785
    :goto_0
    const/4 v0, 0x1

    move v9, v0

    :goto_1
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_3

    .line 786
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->g:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    .line 787
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->w:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 788
    if-nez v0, :cond_0

    .line 789
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 791
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmPlayer;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmPlayer;JJ)V

    .line 785
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_1

    .line 794
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;

    .line 795
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->w:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 796
    if-nez v0, :cond_4

    .line 797
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v8, v0

    :goto_2
    move v9, v1

    .line 799
    :goto_3
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_3

    .line 800
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->g:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    .line 801
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->w:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 802
    if-nez v0, :cond_2

    .line 803
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 805
    :cond_2
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmPlayer;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmPlayer;JJ)V

    .line 799
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_3

    .line 810
    :cond_3
    return-void

    :cond_4
    move-object v8, v0

    goto :goto_2

    :cond_5
    move-object v8, v0

    goto :goto_0
.end method

.method public unSync()V
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 646
    return-void
.end method
