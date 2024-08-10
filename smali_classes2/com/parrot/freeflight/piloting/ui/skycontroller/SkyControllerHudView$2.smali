.class Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView$2;
.super Ljava/lang/Object;
.source "SkyControllerHudView.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/Model$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView$2;->this$0:Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView$2;->this$0:Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;->updateView()V

    .line 73
    return-void
.end method
