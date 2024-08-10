.class Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene$3;
.super Ljava/lang/Object;
.source "FlightPlanGlScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->clear()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

.field final synthetic val$resourcesToDelete:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    .prologue
    .line 1120
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene$3;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene$3;->val$resourcesToDelete:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1123
    const/4 v0, 0x0

    .local v0, "it":I
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene$3;->val$resourcesToDelete:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1124
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene$3;->val$resourcesToDelete:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/engine3d/IGLResources;

    .line 1125
    .local v1, "resources":Lcom/parrot/engine3d/IGLResources;
    invoke-interface {v1}, Lcom/parrot/engine3d/IGLResources;->deleteGLResources()V

    .line 1123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1127
    .end local v1    # "resources":Lcom/parrot/engine3d/IGLResources;
    :cond_0
    return-void
.end method
