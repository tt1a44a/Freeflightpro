.class Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder$4;
.super Ljava/lang/Object;
.source "VmVideoRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->startRecording(Lcom/muvee/dsg/mmas/api/advancevideomixer/OnComponentPreparedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmas/api/advancevideomixer/OnComponentPreparedListener;

.field final synthetic b:[Z

.field final synthetic c:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;Lcom/muvee/dsg/mmas/api/advancevideomixer/OnComponentPreparedListener;[Z)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder$4;->c:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;

    iput-object p2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder$4;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/OnComponentPreparedListener;

    iput-object p3, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder$4;->b:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 134
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder$4;->c:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->f(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;)V

    .line 135
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder$4;->c:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder$4;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/OnComponentPreparedListener;

    iget-object v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder$4;->b:[Z

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;Lcom/muvee/dsg/mmas/api/advancevideomixer/OnComponentPreparedListener;[ZI)V

    .line 136
    return-void
.end method
