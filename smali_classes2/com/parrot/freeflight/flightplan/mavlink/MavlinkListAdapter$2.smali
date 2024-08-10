.class Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter$2;
.super Ljava/lang/Object;
.source "MavlinkListAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter$2;->this$0:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;)I
    .locals 2
    .param p1, "lhs"    # Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;
    .param p2, "rhs"    # Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    .prologue
    .line 49
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 46
    check-cast p1, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    check-cast p2, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter$2;->compare(Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;)I

    move-result v0

    return v0
.end method
