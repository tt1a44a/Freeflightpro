.class public Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;
.super Ljava/lang/Object;
.source "GroupRecord.java"

# interfaces
.implements Lcom/parrot/freeflight/flightplan/model/history/IRecordable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;
    }
.end annotation


# instance fields
.field private mCur:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

.field private mHead:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getNextNode()Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->mCur:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->mHead:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->mCur:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;->mNext:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    goto :goto_0
.end method

.method private removeNode(Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;)V
    .locals 3
    .param p1, "node"    # Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 155
    iget-object v0, p1, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;->mPrev:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;->mNext:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->mHead:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    .line 157
    :goto_0
    iget-object v0, p1, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;->mNext:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;->mPrev:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->mCur:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    .line 160
    :goto_1
    iput-object v2, p1, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;->mNext:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    .line 161
    iput-object v2, p1, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;->mPrev:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    .line 162
    iput-object v2, p1, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;->mRecord:Lcom/parrot/freeflight/flightplan/model/history/IRecordable;

    .line 163
    return-void

    .line 156
    :cond_0
    iget-object v0, p1, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;->mPrev:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    iget-object v1, p1, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;->mNext:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    iput-object v1, v0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;->mNext:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    goto :goto_0

    .line 158
    :cond_1
    iget-object v0, p1, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;->mNext:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    iget-object v1, p1, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;->mPrev:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    iput-object v1, v0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;->mPrev:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    goto :goto_1
.end method


# virtual methods
.method public addRecord(Lcom/parrot/freeflight/flightplan/model/history/IRecordable;)V
    .locals 5
    .param p1, "record"    # Lcom/parrot/freeflight/flightplan/model/history/IRecordable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 55
    move-object v2, p1

    .line 56
    .local v2, "recordToAdd":Lcom/parrot/freeflight/flightplan/model/history/IRecordable;
    instance-of v3, p1, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;

    if-eqz v3, :cond_0

    .line 58
    check-cast p1, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;

    .end local p1    # "record":Lcom/parrot/freeflight/flightplan/model/history/IRecordable;
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->simplifySelf()Lcom/parrot/freeflight/flightplan/model/history/IRecordable;

    move-result-object v2

    .line 61
    :cond_0
    if-eqz v2, :cond_1

    .line 62
    new-instance v1, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    invoke-direct {v1, v4, v2, v4}, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;-><init>(Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;Lcom/parrot/freeflight/flightplan/model/history/IRecordable;Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;)V

    .line 63
    .local v1, "newNode":Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->mCur:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    if-nez v3, :cond_2

    .line 64
    iput-object v1, p0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->mHead:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    .line 76
    :goto_0
    iput-object v1, p0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->mCur:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    .line 78
    .end local v1    # "newNode":Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;
    :cond_1
    return-void

    .line 67
    .restart local v1    # "newNode":Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;
    :cond_2
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->mCur:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    iget-object v0, v3, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;->mNext:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    .line 68
    .local v0, "curNext":Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;
    if-eqz v0, :cond_3

    .line 69
    iput-object v4, v0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;->mNext:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    .line 70
    iput-object v4, v0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;->mPrev:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    .line 71
    iput-object v4, v0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;->mRecord:Lcom/parrot/freeflight/flightplan/model/history/IRecordable;

    .line 73
    :cond_3
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->mCur:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    iput-object v1, v3, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;->mNext:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    .line 74
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->mCur:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    iput-object v3, v1, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;->mPrev:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    goto :goto_0
.end method

.method public canRedo()Z
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->getNextNode()Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canUndo()Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->mCur:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->mCur:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->mHead:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    .line 108
    return-void
.end method

.method public merge(Lcom/parrot/freeflight/flightplan/model/history/IRecordable;)Lcom/parrot/freeflight/flightplan/model/history/IRecordable;
    .locals 1
    .param p1, "other"    # Lcom/parrot/freeflight/flightplan/model/history/IRecordable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public redo()V
    .locals 1

    .prologue
    .line 30
    :goto_0
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->getNextNode()Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->getNextNode()Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->mCur:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    .line 32
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->mCur:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;->mRecord:Lcom/parrot/freeflight/flightplan/model/history/IRecordable;

    invoke-interface {v0}, Lcom/parrot/freeflight/flightplan/model/history/IRecordable;->redo()V

    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method

.method public redoOneStep()Z
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->getNextNode()Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->getNextNode()Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->mCur:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    .line 101
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->mCur:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;->mRecord:Lcom/parrot/freeflight/flightplan/model/history/IRecordable;

    invoke-interface {v0}, Lcom/parrot/freeflight/flightplan/model/history/IRecordable;->redo()V

    .line 103
    :cond_0
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->getNextNode()Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public simplifySelf()Lcom/parrot/freeflight/flightplan/model/history/IRecordable;
    .locals 10
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 113
    iget-object v8, p0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->mCur:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->mCur:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    iget-object v8, v8, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;->mNext:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    if-eqz v8, :cond_0

    .line 114
    iget-object v8, p0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->mCur:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    iget-object v0, v8, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;->mNext:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    .line 115
    .local v0, "curNext":Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;
    iput-object v7, v0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;->mNext:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    .line 116
    iput-object v7, v0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;->mPrev:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    .line 117
    iput-object v7, v0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;->mRecord:Lcom/parrot/freeflight/flightplan/model/history/IRecordable;

    .line 118
    iget-object v8, p0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->mCur:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    iput-object v7, v8, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;->mNext:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    .line 121
    .end local v0    # "curNext":Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->mHead:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    .line 122
    .local v1, "curNode":Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;
    :goto_0
    if-eqz v1, :cond_3

    iget-object v8, v1, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;->mNext:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    if-eqz v8, :cond_3

    .line 124
    :try_start_0
    iget-object v8, v1, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;->mRecord:Lcom/parrot/freeflight/flightplan/model/history/IRecordable;

    iget-object v9, v1, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;->mNext:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    iget-object v9, v9, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;->mRecord:Lcom/parrot/freeflight/flightplan/model/history/IRecordable;

    invoke-interface {v8, v9}, Lcom/parrot/freeflight/flightplan/model/history/IRecordable;->merge(Lcom/parrot/freeflight/flightplan/model/history/IRecordable;)Lcom/parrot/freeflight/flightplan/model/history/IRecordable;

    move-result-object v3

    .line 125
    .local v3, "mergeRecord":Lcom/parrot/freeflight/flightplan/model/history/IRecordable;
    iget-object v6, v1, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;->mPrev:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    .line 126
    .local v6, "preNode":Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;
    iget-object v5, v1, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;->mNext:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    .line 127
    .local v5, "nextNode":Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;
    iget-object v4, v5, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;->mNext:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    .line 128
    .local v4, "nextNextNode":Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;
    if-nez v3, :cond_2

    .line 129
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->removeNode(Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;)V

    .line 130
    invoke-direct {p0, v5}, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->removeNode(Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;)V

    .line 131
    if-eqz v6, :cond_1

    move-object v1, v6

    :goto_1
    goto :goto_0

    :cond_1
    move-object v1, v4

    goto :goto_1

    .line 133
    :cond_2
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->removeNode(Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;)V

    .line 134
    iput-object v3, v5, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;->mRecord:Lcom/parrot/freeflight/flightplan/model/history/IRecordable;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    move-object v1, v5

    goto :goto_0

    .line 137
    .end local v3    # "mergeRecord":Lcom/parrot/freeflight/flightplan/model/history/IRecordable;
    .end local v4    # "nextNextNode":Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;
    .end local v5    # "nextNode":Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;
    .end local v6    # "preNode":Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;
    :catch_0
    move-exception v2

    .line 139
    .local v2, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, v1, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;->mNext:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    .line 140
    goto :goto_0

    .line 144
    .end local v2    # "e":Ljava/lang/UnsupportedOperationException;
    :cond_3
    iget-object v8, p0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->mCur:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    if-nez v8, :cond_5

    move-object p0, v7

    .line 151
    .end local p0    # "this":Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;
    :cond_4
    :goto_2
    return-object p0

    .line 148
    .restart local p0    # "this":Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;
    :cond_5
    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->mHead:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    iget-object v8, p0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->mCur:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    if-ne v7, v8, :cond_4

    .line 149
    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->mHead:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    iget-object p0, v7, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;->mRecord:Lcom/parrot/freeflight/flightplan/model/history/IRecordable;

    goto :goto_2
.end method

.method public undo()V
    .locals 1

    .prologue
    .line 22
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->mCur:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->mCur:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;->mRecord:Lcom/parrot/freeflight/flightplan/model/history/IRecordable;

    invoke-interface {v0}, Lcom/parrot/freeflight/flightplan/model/history/IRecordable;->undo()V

    .line 24
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->mCur:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;->mPrev:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->mCur:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public undoOneStep()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->mCur:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->mCur:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;->mRecord:Lcom/parrot/freeflight/flightplan/model/history/IRecordable;

    invoke-interface {v0}, Lcom/parrot/freeflight/flightplan/model/history/IRecordable;->undo()V

    .line 88
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->mCur:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;->mPrev:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->mCur:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->mCur:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord$Node;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
