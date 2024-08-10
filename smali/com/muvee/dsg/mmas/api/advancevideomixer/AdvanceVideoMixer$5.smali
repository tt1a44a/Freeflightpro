.class Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$5;
.super Ljava/lang/Object;
.source "AdvanceVideoMixer.java"

# interfaces
.implements Lcom/muvee/dsg/mmas/api/advancevideomixer/OnComponentPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$5;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;

    iput-object p2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$5;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$5;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$5;->a:Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->a(Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;Ljava/util/List;Ljava/lang/Object;)V

    .line 158
    return-void
.end method
