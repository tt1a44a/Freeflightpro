.class Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;
.super Ljava/lang/Object;
.source "FlightPlanDataCenter.java"

# interfaces
.implements Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionStreamEditor"
.end annotation


# instance fields
.field private mWp:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private navigatorIndex:I

.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;)V
    .locals 1

    .prologue
    .line 939
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 942
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->navigatorIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;
    .param p2, "x1"    # Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$1;

    .prologue
    .line 939
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;-><init>(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;)V

    return-void
.end method

.method private findStartMediaTiltAction(ZZ)Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    .locals 8
    .param p1, "isTiltAction"    # Z
    .param p2, "needRemove"    # Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1170
    const/4 v3, 0x0

    .line 1171
    .local v3, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    const/4 v2, -0x1

    .line 1172
    .local v2, "actionIndex":I
    const/4 v5, -0x1

    .line 1173
    .local v5, "maxIndex":I
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->mWp:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->navigatorIndex:I

    if-gez v6, :cond_4

    .line 1175
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->mWp:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v6}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-static {v6}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$700(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;)Ljava/util/List;

    move-result-object v3

    .line 1176
    :goto_0
    if-eqz v3, :cond_0

    .line 1177
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .line 1183
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1184
    move v4, v5

    .local v4, "i":I
    :goto_2
    if-ltz v4, :cond_1

    .line 1185
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    .line 1186
    .local v0, "action":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-static {v6, v0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$1100(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1194
    .end local v0    # "action":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    .end local v4    # "i":I
    :cond_1
    :goto_3
    const/4 v1, 0x0

    .line 1195
    .local v1, "actionFound":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    if-ltz v2, :cond_2

    if-eqz v3, :cond_2

    .line 1196
    if-eqz p2, :cond_a

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    move-object v1, v6

    .line 1197
    :goto_4
    if-eqz p2, :cond_2

    iget v6, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->navigatorIndex:I

    if-lez v6, :cond_2

    iget v6, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->navigatorIndex:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->navigatorIndex:I

    .line 1199
    :cond_2
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-static {v6}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$800(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;)V

    .line 1200
    return-object v1

    .line 1175
    .end local v1    # "actionFound":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    :cond_3
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-static {v6}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$600(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->mWp:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v7}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v6}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getActions()Ljava/util/List;

    move-result-object v3

    goto :goto_0

    .line 1179
    :cond_4
    iget v6, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->navigatorIndex:I

    if-lez v6, :cond_0

    .line 1180
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->mWp:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-static {v6}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$700(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;)Ljava/util/List;

    move-result-object v3

    .line 1181
    :goto_5
    iget v6, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->navigatorIndex:I

    add-int/lit8 v5, v6, -0x1

    goto :goto_1

    .line 1180
    :cond_5
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->mWp:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v6}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getActions()Ljava/util/List;

    move-result-object v3

    goto :goto_5

    .line 1188
    .restart local v0    # "action":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    .restart local v4    # "i":I
    :cond_6
    if-eqz p1, :cond_7

    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-static {v6, v0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$1000(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)Z

    move-result v6

    if-nez v6, :cond_8

    :cond_7
    if-nez p1, :cond_9

    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-static {v6, v0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$900(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1189
    :cond_8
    move v2, v4

    .line 1190
    goto :goto_3

    .line 1184
    :cond_9
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 1196
    .end local v0    # "action":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    .end local v4    # "i":I
    .restart local v1    # "actionFound":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    :cond_a
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    move-object v1, v6

    goto :goto_4
.end method

.method private findStopMediaAction(Z)Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    .locals 7
    .param p1, "needRemove"    # Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1212
    const/4 v2, -0x1

    .line 1213
    .local v2, "actionIndex":I
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->mWp:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-static {v6}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$700(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;)Ljava/util/List;

    move-result-object v3

    .line 1214
    .local v3, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    :goto_0
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1215
    iget v6, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->navigatorIndex:I

    if-gez v6, :cond_3

    const/4 v5, 0x0

    .line 1216
    .local v5, "startIndex":I
    :goto_1
    move v4, v5

    .local v4, "i":I
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 1217
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    .line 1218
    .local v0, "action":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-static {v6, v0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$1200(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1219
    move v2, v4

    .line 1226
    .end local v0    # "action":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    .end local v4    # "i":I
    .end local v5    # "startIndex":I
    :cond_0
    const/4 v1, 0x0

    .line 1227
    .local v1, "actionFound":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    if-ltz v2, :cond_1

    if-eqz v3, :cond_1

    .line 1228
    if-eqz p1, :cond_5

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    move-object v1, v6

    .line 1230
    :cond_1
    :goto_3
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-static {v6}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$800(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;)V

    .line 1231
    return-object v1

    .line 1213
    .end local v1    # "actionFound":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    .end local v3    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    :cond_2
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->mWp:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v6}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getActions()Ljava/util/List;

    move-result-object v3

    goto :goto_0

    .line 1215
    .restart local v3    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    :cond_3
    iget v6, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->navigatorIndex:I

    add-int/lit8 v5, v6, 0x1

    goto :goto_1

    .line 1221
    .restart local v0    # "action":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    .restart local v4    # "i":I
    .restart local v5    # "startIndex":I
    :cond_4
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-static {v6, v0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$1100(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1216
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1228
    .end local v0    # "action":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    .end local v4    # "i":I
    .end local v5    # "startIndex":I
    .restart local v1    # "actionFound":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    :cond_5
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    move-object v1, v6

    goto :goto_3
.end method


# virtual methods
.method public addNavigatorAction(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
    .locals 3
    .param p1, "navigatorAction"    # Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1129
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->mWp:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    if-nez v1, :cond_1

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->navigatorIndex:I

    if-gez v1, :cond_1

    .line 1131
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$600(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$600(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v1, p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->addAction(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)V

    .line 1132
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->onPlanChanged()V

    .line 1157
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$800(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;)V

    .line 1158
    return-object p0

    .line 1133
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->mWp:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->navigatorIndex:I

    if-gez v1, :cond_5

    .line 1135
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->mWp:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$700(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;)Ljava/util/List;

    move-result-object v0

    .line 1136
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    :goto_1
    if-nez v0, :cond_3

    .line 1137
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$600(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->mWp:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v1, p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->addAction(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)V

    .line 1145
    :goto_2
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->onPlanChanged()V

    goto :goto_0

    .line 1135
    .end local v0    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    :cond_2
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$600(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->mWp:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getActions()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 1139
    .restart local v0    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    invoke-static {v2, v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$1000(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1140
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 1142
    :cond_4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1146
    .end local v0    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    :cond_5
    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->navigatorIndex:I

    if-ltz v1, :cond_0

    .line 1147
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->mWp:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$700(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;)Ljava/util/List;

    move-result-object v0

    .line 1148
    .restart local v0    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    :goto_3
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1149
    :cond_6
    const-string v1, "FlightPlanDataCenter"

    const-string v2, "Impossible to come here, because we have a navigator action in list"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1147
    .end local v0    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    :cond_7
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->mWp:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getActions()Ljava/util/List;

    move-result-object v0

    goto :goto_3

    .line 1152
    .restart local v0    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    :cond_8
    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->navigatorIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1153
    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->navigatorIndex:I

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1154
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->onPlanChanged()V

    goto/16 :goto_0
.end method

.method public addStartMediaAction(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
    .locals 5
    .param p1, "mediaStartAction"    # Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1022
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-static {v2, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$900(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1024
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->mWp:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->navigatorIndex:I

    if-gez v2, :cond_4

    .line 1026
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->mWp:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$700(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;)Ljava/util/List;

    move-result-object v0

    .line 1027
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    :goto_0
    if-nez v0, :cond_2

    .line 1028
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$600(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->mWp:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v2, p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->addAction(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)V

    .line 1036
    :goto_1
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->onPlanChanged()V

    .line 1055
    .end local v0    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    :cond_0
    :goto_2
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$800(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;)V

    .line 1056
    return-object p0

    .line 1026
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$600(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->mWp:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getActions()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1030
    .restart local v0    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    invoke-static {v3, v2}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$1000(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1031
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 1033
    :cond_3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1037
    .end local v0    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    :cond_4
    iget v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->navigatorIndex:I

    if-ltz v2, :cond_0

    .line 1038
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->mWp:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$700(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;)Ljava/util/List;

    move-result-object v0

    .line 1039
    .restart local v0    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    :goto_3
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1040
    :cond_5
    const-string v2, "FlightPlanDataCenter"

    const-string v3, "Impossible to come here, because we have a navigator action in list"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1038
    .end local v0    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    :cond_6
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->mWp:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getActions()Ljava/util/List;

    move-result-object v0

    goto :goto_3

    .line 1042
    .restart local v0    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    :cond_7
    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->navigatorIndex:I

    .line 1044
    .local v1, "addIndex":I
    iget v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->navigatorIndex:I

    if-lez v2, :cond_8

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    iget v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->navigatorIndex:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    invoke-static {v3, v2}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$1000(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1045
    iget v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->navigatorIndex:I

    add-int/lit8 v1, v2, -0x1

    .line 1047
    :cond_8
    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1048
    iget v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->navigatorIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->navigatorIndex:I

    .line 1049
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->onPlanChanged()V

    goto/16 :goto_2

    .line 1053
    .end local v0    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    .end local v1    # "addIndex":I
    :cond_9
    const-string v2, "FlightPlanDataCenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not a start media action : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public addStopMediaAction(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
    .locals 3
    .param p1, "mediaStopAction"    # Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1062
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->mWp:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->navigatorIndex:I

    if-gez v1, :cond_2

    .line 1063
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->mWp:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getActions()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1064
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->mWp:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v1, p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->addAction(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)V

    .line 1068
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->onPlanChanged()V

    .line 1081
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$800(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;)V

    .line 1082
    return-object p0

    .line 1066
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->mWp:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getActions()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 1069
    :cond_2
    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->navigatorIndex:I

    if-ltz v1, :cond_0

    .line 1070
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->mWp:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$700(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;)Ljava/util/List;

    move-result-object v0

    .line 1071
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    :goto_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1072
    :cond_3
    const-string v1, "FlightPlanDataCenter"

    const-string v2, "Impossible to come here, because we have a navigator action in list"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1070
    .end local v0    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    :cond_4
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->mWp:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getActions()Ljava/util/List;

    move-result-object v0

    goto :goto_2

    .line 1074
    .restart local v0    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    :cond_5
    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->navigatorIndex:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 1075
    const-string v1, "FlightPlanDataCenter"

    const-string v2, "WHY"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    :cond_6
    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->navigatorIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1078
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->onPlanChanged()V

    goto :goto_1
.end method

.method public addTiltAction(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
    .locals 4
    .param p1, "tiltAction"    # Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1088
    instance-of v1, p1, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;

    if-eqz v1, :cond_9

    .line 1090
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->mWp:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->navigatorIndex:I

    if-gez v1, :cond_4

    .line 1092
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->mWp:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$700(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;)Ljava/util/List;

    move-result-object v0

    .line 1093
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    :goto_0
    if-nez v0, :cond_2

    .line 1094
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$600(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->mWp:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v1, p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->addAction(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)V

    .line 1102
    :goto_1
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->onPlanChanged()V

    .line 1121
    .end local v0    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    :cond_0
    :goto_2
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$800(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;)V

    .line 1122
    return-object p0

    .line 1092
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$600(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->mWp:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getActions()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1096
    .restart local v0    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    invoke-static {v2, v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$1000(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1098
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1100
    :cond_3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1103
    .end local v0    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    :cond_4
    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->navigatorIndex:I

    if-ltz v1, :cond_0

    .line 1104
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->mWp:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$700(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;)Ljava/util/List;

    move-result-object v0

    .line 1105
    .restart local v0    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    :goto_3
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1106
    :cond_5
    const-string v1, "FlightPlanDataCenter"

    const-string v2, "Impossible to come here, because we have a navigator action in list"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1104
    .end local v0    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    :cond_6
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->mWp:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getActions()Ljava/util/List;

    move-result-object v0

    goto :goto_3

    .line 1108
    .restart local v0    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    :cond_7
    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->navigatorIndex:I

    if-lez v1, :cond_8

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->navigatorIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;

    if-eqz v1, :cond_8

    .line 1110
    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->navigatorIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1111
    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->navigatorIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->navigatorIndex:I

    .line 1113
    :cond_8
    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->navigatorIndex:I

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1114
    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->navigatorIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->navigatorIndex:I

    .line 1115
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->onPlanChanged()V

    goto/16 :goto_2

    .line 1119
    .end local v0    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    :cond_9
    const-string v1, "FlightPlanDataCenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a tilt action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public from(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
    .locals 3
    .param p1, "navigatorAction"    # Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 957
    if-eqz p1, :cond_2

    .line 958
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->mWp:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$700(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;)Ljava/util/List;

    move-result-object v0

    .line 959
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 961
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->navigatorIndex:I

    if-gez v2, :cond_2

    .line 962
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 963
    iput v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->navigatorIndex:I

    .line 961
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 958
    .end local v0    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->mWp:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getActions()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 968
    :cond_2
    return-object p0
.end method

.method public from(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
    .locals 1
    .param p1, "wp"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 948
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->mWp:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    .line 949
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->navigatorIndex:I

    .line 950
    return-object p0
.end method

.method public getStartMediaAction()Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 998
    invoke-direct {p0, v0, v0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->findStartMediaTiltAction(ZZ)Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    move-result-object v0

    return-object v0
.end method

.method public getTiltAction()Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1016
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->findStartMediaTiltAction(ZZ)Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    move-result-object v0

    return-object v0
.end method

.method public removeNavigatorAction(Z)Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    .locals 3
    .param p1, "mediaMergeable"    # Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 974
    const/4 v0, 0x0

    .line 975
    .local v0, "actionRemoved":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->mWp:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$700(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;)Ljava/util/List;

    move-result-object v1

    .line 976
    .local v1, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    :goto_0
    if-eqz v1, :cond_1

    iget v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->navigatorIndex:I

    if-ltz v2, :cond_1

    .line 977
    iget v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->navigatorIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "actionRemoved":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    check-cast v0, Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    .line 978
    .restart local v0    # "actionRemoved":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    if-eqz p1, :cond_0

    .line 979
    iget v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->navigatorIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 980
    iget v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->navigatorIndex:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 982
    :cond_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->navigatorIndex:I

    .line 983
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->onPlanChanged()V

    .line 985
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$800(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;)V

    .line 986
    return-object v0

    .line 975
    .end local v1    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    :cond_2
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->mWp:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getActions()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public removeStartMediaAction()Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 992
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->findStartMediaTiltAction(ZZ)Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    move-result-object v0

    return-object v0
.end method

.method public removeStopMediaAction()Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1004
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->findStopMediaAction(Z)Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    move-result-object v0

    return-object v0
.end method

.method public removeTiltAction()Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1010
    invoke-direct {p0, v0, v0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;->findStartMediaTiltAction(ZZ)Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    move-result-object v0

    return-object v0
.end method
