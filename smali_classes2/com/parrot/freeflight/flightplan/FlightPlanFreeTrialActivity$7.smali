.class Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$7;
.super Ljava/lang/Object;
.source "FlightPlanFreeTrialActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$7;->this$0:Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThemeChanged()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$7;->this$0:Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->access$700(Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;)V

    .line 204
    return-void
.end method
