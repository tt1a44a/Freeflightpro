.class public Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld;
.super Ljava/lang/Object;
.source "VmMediaEditorOld.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;
    }
.end annotation


# static fields
.field private static c:I


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;",
            "Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;",
            "Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/16 v0, 0x12c

    sput v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld;->a:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld;->b:Ljava/util/Map;

    return-void
.end method

.method private a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;

    return-object v0
.end method

.method private a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;)V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    invoke-virtual {p2, p1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->pause(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;)V

    .line 353
    return-void
.end method

.method static synthetic a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld;->a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;)V

    return-void
.end method

.method private b(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;

    return-object v0
.end method


# virtual methods
.method public addTransition(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;)V
    .locals 0

    .prologue
    .line 424
    return-void
.end method

.method public drawFrames(Ljava/util/List;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;",
            ">;",
            "Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;",
            "Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;",
            ")V"
        }
    .end annotation

    .prologue
    .line 374
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 376
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;

    .line 378
    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld;->a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;

    move-result-object v2

    .line 379
    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld;->b(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;

    move-result-object v3

    .line 381
    if-eqz v2, :cond_0

    .line 385
    invoke-interface {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;->getTextureInfo()Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;

    move-result-object v4

    .line 386
    sget-object v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$3;->a:[I

    iget-object v5, v4, Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;->type:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$TextureType;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$TextureType;->ordinal()I

    move-result v5

    aget v0, v0, v5

    packed-switch v0, :pswitch_data_0

    move-object v0, p3

    .line 394
    :goto_1
    new-instance v5, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$2;

    invoke-direct {v5, p0, v2, v3}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$2;-><init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4, v5, v2}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->drawFrame(Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$DrawFrameHandler;F)V

    .line 374
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_0
    move-object v0, p2

    .line 389
    goto :goto_1

    :pswitch_1
    move-object v0, p3

    .line 391
    goto :goto_1

    .line 420
    :cond_1
    return-void

    .line 386
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasMedia()Z
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mediaPlayers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;",
            ">;"
        }
    .end annotation

    .prologue
    .line 356
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public onAddToOutputListChanged(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 60
    new-instance v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;

    invoke-direct {v3}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;-><init>()V

    .line 61
    new-instance v4, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;

    invoke-direct {v4}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;-><init>()V

    .line 63
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 128
    :goto_1
    :pswitch_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;

    .line 131
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;

    if-nez v1, :cond_0

    .line 133
    new-instance v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;

    invoke-direct {v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;-><init>()V

    .line 135
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 161
    :cond_0
    :goto_2
    const-string/jumbo v5, "scaleX"

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    iget v8, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->a:F

    aput v8, v6, v7

    const/4 v7, 0x1

    iget v8, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->a:F

    aput v8, v6, v7

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 162
    const-string/jumbo v6, "scaleY"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    iget v9, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->b:F

    aput v9, v7, v8

    const/4 v8, 0x1

    iget v9, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->b:F

    aput v9, v7, v8

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 163
    const-string/jumbo v7, "translateX"

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    iget v10, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->c:F

    aput v10, v8, v9

    const/4 v9, 0x1

    iget v10, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->c:F

    aput v10, v8, v9

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 164
    const-string/jumbo v8, "translateY"

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    iget v1, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->d:F

    aput v1, v9, v10

    const/4 v1, 0x1

    iget v3, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->d:F

    aput v3, v9, v1

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 167
    new-instance v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;

    invoke-direct {v3}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;-><init>()V

    .line 169
    const/4 v8, 0x4

    new-array v8, v8, [Landroid/animation/PropertyValuesHolder;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v5, 0x1

    aput-object v6, v8, v5

    const/4 v5, 0x2

    aput-object v7, v8, v5

    const/4 v5, 0x3

    aput-object v1, v8, v5

    invoke-static {v3, v8}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 173
    sget v5, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld;->c:I

    int-to-long v6, v5

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 174
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 176
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld;->a:Ljava/util/Map;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;

    if-nez v1, :cond_1

    .line 182
    new-instance v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;

    invoke-direct {v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;-><init>()V

    .line 210
    :cond_1
    const-string/jumbo v3, "scaleX"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    iget v7, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->a:F

    aput v7, v5, v6

    const/4 v6, 0x1

    iget v7, v4, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->a:F

    aput v7, v5, v6

    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 211
    const-string/jumbo v5, "scaleY"

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    iget v8, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->b:F

    aput v8, v6, v7

    const/4 v7, 0x1

    iget v8, v4, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->b:F

    aput v8, v6, v7

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 212
    const-string/jumbo v6, "translateX"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    iget v9, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->c:F

    aput v9, v7, v8

    const/4 v8, 0x1

    iget v9, v4, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->c:F

    aput v9, v7, v8

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 213
    const-string/jumbo v7, "translateY"

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    iget v1, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->d:F

    aput v1, v8, v9

    const/4 v1, 0x1

    iget v4, v4, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->d:F

    aput v4, v8, v1

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 216
    new-instance v4, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;

    invoke-direct {v4}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;-><init>()V

    .line 218
    const/4 v7, 0x4

    new-array v7, v7, [Landroid/animation/PropertyValuesHolder;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v3, 0x1

    aput-object v5, v7, v3

    const/4 v3, 0x2

    aput-object v6, v7, v3

    const/4 v3, 0x3

    aput-object v1, v7, v3

    invoke-static {v4, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 222
    sget v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld;->c:I

    int-to-long v6, v3

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 223
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 225
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld;->b:Ljava/util/Map;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 67
    :pswitch_1
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->a:F

    .line 69
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, v4, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->a:F

    .line 70
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, v4, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->c:F

    .line 72
    packed-switch v2, :pswitch_data_2

    goto/16 :goto_1

    .line 74
    :pswitch_2
    const/high16 v0, -0x41000000    # -0.5f

    iput v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->c:F

    goto/16 :goto_1

    .line 77
    :pswitch_3
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->c:F

    goto/16 :goto_1

    .line 82
    :pswitch_4
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->a:F

    .line 83
    packed-switch v2, :pswitch_data_3

    goto/16 :goto_1

    .line 85
    :pswitch_5
    const/high16 v0, -0x41000000    # -0.5f

    iput v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->c:F

    .line 86
    const/high16 v0, -0x41000000    # -0.5f

    iput v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->d:F

    .line 87
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->b:F

    goto/16 :goto_1

    .line 90
    :pswitch_6
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->c:F

    .line 92
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, v4, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->a:F

    .line 93
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, v4, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->c:F

    goto/16 :goto_1

    .line 97
    :pswitch_7
    const/high16 v0, -0x41000000    # -0.5f

    iput v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->c:F

    .line 98
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->d:F

    .line 99
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->b:F

    goto/16 :goto_1

    .line 104
    :pswitch_8
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->a:F

    .line 105
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->b:F

    .line 106
    packed-switch v2, :pswitch_data_4

    goto/16 :goto_1

    .line 108
    :pswitch_9
    const/high16 v0, -0x41000000    # -0.5f

    iput v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->c:F

    .line 109
    const/high16 v0, -0x41000000    # -0.5f

    iput v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->d:F

    goto/16 :goto_1

    .line 112
    :pswitch_a
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->c:F

    .line 113
    const/high16 v0, -0x41000000    # -0.5f

    iput v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->d:F

    goto/16 :goto_1

    .line 116
    :pswitch_b
    const/high16 v0, -0x41000000    # -0.5f

    iput v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->c:F

    .line 117
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->d:F

    goto/16 :goto_1

    .line 120
    :pswitch_c
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->c:F

    .line 121
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->d:F

    goto/16 :goto_1

    .line 141
    :pswitch_d
    const/4 v5, 0x0

    iput v5, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->a:F

    .line 142
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->b:F

    .line 143
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->c:F

    goto/16 :goto_2

    .line 146
    :pswitch_e
    const/high16 v5, 0x3f000000    # 0.5f

    iput v5, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->a:F

    .line 147
    const/4 v5, 0x0

    iput v5, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->b:F

    .line 148
    const/high16 v5, -0x41000000    # -0.5f

    iput v5, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->c:F

    .line 149
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->d:F

    goto/16 :goto_2

    .line 152
    :pswitch_f
    const/high16 v5, 0x3f000000    # 0.5f

    iput v5, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->a:F

    .line 153
    const/4 v5, 0x0

    iput v5, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->b:F

    .line 154
    const/high16 v5, 0x3f000000    # 0.5f

    iput v5, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->c:F

    .line 155
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->d:F

    goto/16 :goto_2

    .line 230
    :cond_2
    return-void

    .line 63
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_8
    .end packed-switch

    .line 135
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 72
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 83
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 106
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public onRemoveFromOutput(ILcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;Ljava/util/List;Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;",
            "Ljava/util/List",
            "<",
            "Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;",
            ">;",
            "Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;",
            ")V"
        }
    .end annotation

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 234
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;

    .line 235
    new-instance v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;

    invoke-direct {v2}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;-><init>()V

    .line 237
    if-eqz v0, :cond_0

    .line 238
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 308
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 309
    const-string/jumbo v1, "scaleX"

    new-array v3, v10, [F

    iget v4, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->a:F

    aput v4, v3, v8

    iget v4, v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->a:F

    aput v4, v3, v9

    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 310
    const-string/jumbo v3, "scaleY"

    new-array v4, v10, [F

    iget v5, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->b:F

    aput v5, v4, v8

    iget v5, v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->b:F

    aput v5, v4, v9

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 311
    const-string/jumbo v4, "translateX"

    new-array v5, v10, [F

    iget v6, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->c:F

    aput v6, v5, v8

    iget v6, v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->c:F

    aput v6, v5, v9

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 312
    const-string/jumbo v5, "translateY"

    new-array v6, v10, [F

    iget v7, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->d:F

    aput v7, v6, v8

    iget v2, v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->d:F

    aput v2, v6, v9

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 314
    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v5, v8

    aput-object v3, v5, v9

    aput-object v4, v5, v10

    const/4 v1, 0x3

    aput-object v2, v5, v1

    invoke-static {v0, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 318
    sget v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld;->c:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 319
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 320
    new-instance v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$1;

    invoke-direct {v1, p0, p2, p4}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$1;-><init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 345
    :cond_1
    invoke-virtual {p0, p3}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld;->onAddToOutputListChanged(Ljava/util/List;)V

    .line 347
    return-void

    .line 240
    :pswitch_0
    invoke-direct {p0, p2, p4}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld;->a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;)V

    .line 241
    const/4 v0, 0x0

    .line 242
    goto :goto_0

    .line 244
    :pswitch_1
    iput v4, v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->a:F

    .line 245
    iget v3, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->b:F

    iput v3, v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->b:F

    .line 247
    iget v3, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->c:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    const/high16 v1, -0x40800000    # -1.0f

    :cond_2
    iput v1, v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->c:F

    .line 249
    iget v1, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->d:F

    iput v1, v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->d:F

    goto/16 :goto_0

    .line 252
    :pswitch_2
    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    .line 254
    :pswitch_3
    iget v1, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->a:F

    iput v1, v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->a:F

    .line 255
    iput v4, v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->b:F

    .line 256
    iget v1, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->c:F

    iput v1, v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->c:F

    .line 257
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->d:F

    .line 258
    invoke-interface {p3, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 261
    :pswitch_4
    iput v4, v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->a:F

    .line 262
    iget v3, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->b:F

    iput v3, v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->b:F

    .line 263
    iput v1, v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->c:F

    .line 264
    iget v1, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->d:F

    iput v1, v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->d:F

    goto/16 :goto_0

    .line 267
    :pswitch_5
    iget v3, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->a:F

    iput v3, v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->a:F

    .line 268
    iput v4, v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->b:F

    .line 269
    iget v3, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->c:F

    iput v3, v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->c:F

    .line 270
    iput v1, v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->d:F

    goto/16 :goto_0

    .line 276
    :pswitch_6
    packed-switch p1, :pswitch_data_2

    goto/16 :goto_0

    .line 278
    :pswitch_7
    iget v1, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->a:F

    iput v1, v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->a:F

    .line 279
    iput v4, v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->b:F

    .line 280
    iget v1, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->c:F

    iput v1, v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->c:F

    .line 281
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->d:F

    .line 282
    invoke-interface {p3, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, v8, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 285
    :pswitch_8
    iget v1, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->a:F

    iput v1, v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->a:F

    .line 286
    iput v4, v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->b:F

    .line 287
    iget v1, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->c:F

    iput v1, v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->c:F

    .line 288
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->d:F

    .line 289
    invoke-interface {p3, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, v9, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 292
    :pswitch_9
    iget v3, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->a:F

    iput v3, v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->a:F

    .line 293
    iput v4, v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->b:F

    .line 294
    iget v3, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->c:F

    iput v3, v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->c:F

    .line 295
    iput v1, v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->d:F

    goto/16 :goto_0

    .line 298
    :pswitch_a
    iget v3, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->a:F

    iput v3, v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->a:F

    .line 299
    iput v4, v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->b:F

    .line 300
    iget v3, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->c:F

    iput v3, v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->c:F

    .line 301
    iput v1, v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->d:F

    goto/16 :goto_0

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
    .end packed-switch

    .line 252
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 276
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public removeTransition(II)V
    .locals 0

    .prologue
    .line 428
    return-void
.end method
