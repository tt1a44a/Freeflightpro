.class Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;
.super Ljava/lang/Object;
.source "GroupRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation


# instance fields
.field mNext:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

.field mPrev:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

.field mRecord:Lcom/parrot/freeflight/flightplan/model/history/IRecordable;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;Lcom/parrot/freeflight/flightplan/model/history/IRecordable;Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;)V
    .locals 0
    .param p1, "prev"    # Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;
    .param p2, "record"    # Lcom/parrot/freeflight/flightplan/model/history/IRecordable;
    .param p3, "next"    # Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;->mRecord:Lcom/parrot/freeflight/flightplan/model/history/IRecordable;

    .line 172
    iput-object p3, p0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;->mNext:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    .line 173
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;->mPrev:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    .line 174
    return-void
.end method
