.class Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$1;
.super Ljava/lang/Object;
.source "AdvanceVideoMixer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->startRecording(Lcom/muvee/dsg/mmas/api/advancevideomixer/OutputParam;Lcom/muvee/dsg/mmas/api/advancevideomixer/OnProgressUpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$1;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$1;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;

    invoke-static {v0, p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->a(Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method
