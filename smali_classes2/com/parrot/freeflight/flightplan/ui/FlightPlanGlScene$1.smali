.class Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene$1;
.super Ljava/lang/Object;
.source "FlightPlanGlScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->removeInformationObjects()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

.field final synthetic val$informationObjectsTmpList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    .prologue
    .line 811
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene$1;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene$1;->val$informationObjectsTmpList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 814
    const/4 v1, 0x0

    .local v1, "it":I
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene$1;->val$informationObjectsTmpList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 815
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene$1;->val$informationObjectsTmpList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/engine3d/objects/GLMesh;

    .line 816
    .local v0, "informationObject":Lcom/parrot/engine3d/objects/GLMesh;
    invoke-virtual {v0}, Lcom/parrot/engine3d/objects/GLMesh;->deleteGLResources()V

    .line 814
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 818
    .end local v0    # "informationObject":Lcom/parrot/engine3d/objects/GLMesh;
    :cond_0
    return-void
.end method
