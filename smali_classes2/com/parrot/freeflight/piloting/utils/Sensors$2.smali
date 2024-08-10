.class Lcom/parrot/freeflight/piloting/utils/Sensors$2;
.super Landroid/view/OrientationEventListener;
.source "Sensors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/utils/Sensors;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/utils/Sensors;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/utils/Sensors;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/utils/Sensors;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/utils/Sensors$2;->this$0:Lcom/parrot/freeflight/piloting/utils/Sensors;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 99
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/utils/Sensors$2;->this$0:Lcom/parrot/freeflight/piloting/utils/Sensors;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/utils/Sensors;->access$400(Lcom/parrot/freeflight/piloting/utils/Sensors;)Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 100
    .local v0, "rotation":I
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/utils/Sensors$2;->this$0:Lcom/parrot/freeflight/piloting/utils/Sensors;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/utils/Sensors;->access$500(Lcom/parrot/freeflight/piloting/utils/Sensors;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/utils/Sensors$2;->this$0:Lcom/parrot/freeflight/piloting/utils/Sensors;

    invoke-static {v1, v0}, Lcom/parrot/freeflight/piloting/utils/Sensors;->access$502(Lcom/parrot/freeflight/piloting/utils/Sensors;I)I

    .line 102
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/utils/Sensors$2;->this$0:Lcom/parrot/freeflight/piloting/utils/Sensors;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/utils/Sensors$2;->this$0:Lcom/parrot/freeflight/piloting/utils/Sensors;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/utils/Sensors;->access$500(Lcom/parrot/freeflight/piloting/utils/Sensors;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/parrot/freeflight/piloting/utils/Sensors;->access$600(Lcom/parrot/freeflight/piloting/utils/Sensors;I)V

    .line 104
    :cond_0
    return-void
.end method
