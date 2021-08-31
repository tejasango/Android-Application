.class public Landroid/support/v7/util/DiffUtil;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/util/DiffUtil$PostponedUpdate;,
        Landroid/support/v7/util/DiffUtil$DiffResult;,
        Landroid/support/v7/util/DiffUtil$Range;,
        Landroid/support/v7/util/DiffUtil$Snake;,
        Landroid/support/v7/util/DiffUtil$ItemCallback;,
        Landroid/support/v7/util/DiffUtil$Callback;
    }
.end annotation


# static fields
.field private static final SNAKE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/support/v7/util/DiffUtil$Snake;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 84
    new-instance v0, Landroid/support/v7/util/DiffUtil$1;

    invoke-direct {v0}, Landroid/support/v7/util/DiffUtil$1;-><init>()V

    sput-object v0, Landroid/support/v7/util/DiffUtil;->SNAKE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method public static calculateDiff(Landroid/support/v7/util/DiffUtil$Callback;)Landroid/support/v7/util/DiffUtil$DiffResult;
    .registers 2
    .param p0, "cb"    # Landroid/support/v7/util/DiffUtil$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 105
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/support/v7/util/DiffUtil;->calculateDiff(Landroid/support/v7/util/DiffUtil$Callback;Z)Landroid/support/v7/util/DiffUtil$DiffResult;

    move-result-object v0

    return-object v0
.end method

.method public static calculateDiff(Landroid/support/v7/util/DiffUtil$Callback;Z)Landroid/support/v7/util/DiffUtil$DiffResult;
    .registers 21
    .param p0, "cb"    # Landroid/support/v7/util/DiffUtil$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "detectMoves"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 123
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/util/DiffUtil$Callback;->getOldListSize()I

    move-result v0

    .line 124
    .local v0, "oldSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/util/DiffUtil$Callback;->getNewListSize()I

    move-result v1

    .line 126
    .local v1, "newSize":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v2, "snakes":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$Snake;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v3

    .line 132
    .local v9, "stack":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$Range;>;"
    new-instance v3, Landroid/support/v7/util/DiffUtil$Range;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v4, v1}, Landroid/support/v7/util/DiffUtil$Range;-><init>(IIII)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    add-int v3, v0, v1

    sub-int v4, v0, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int v18, v3, v4

    .line 138
    .local v18, "max":I
    mul-int/lit8 v3, v18, 0x2

    new-array v8, v3, [I

    .line 139
    .local v8, "forward":[I
    mul-int/lit8 v3, v18, 0x2

    new-array v7, v3, [I

    .line 142
    .local v7, "backward":[I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "rangePool":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$Range;>;"
    :goto_33
    move-object v6, v3

    .line 143
    .end local v3    # "rangePool":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$Range;>;"
    .local v6, "rangePool":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$Range;>;"
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_fd

    .line 144
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v9, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/util/DiffUtil$Range;

    .line 145
    .local v3, "range":Landroid/support/v7/util/DiffUtil$Range;
    iget v11, v3, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    iget v12, v3, Landroid/support/v7/util/DiffUtil$Range;->oldListEnd:I

    iget v13, v3, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    iget v14, v3, Landroid/support/v7/util/DiffUtil$Range;->newListEnd:I

    move-object/from16 v10, p0

    move-object v15, v8

    move-object/from16 v16, v7

    move/from16 v17, v18

    invoke-static/range {v10 .. v17}, Landroid/support/v7/util/DiffUtil;->diffPartial(Landroid/support/v7/util/DiffUtil$Callback;IIII[I[II)Landroid/support/v7/util/DiffUtil$Snake;

    move-result-object v4

    .line 147
    .local v4, "snake":Landroid/support/v7/util/DiffUtil$Snake;
    if-eqz v4, :cond_f6

    .line 148
    iget v5, v4, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    if-lez v5, :cond_62

    .line 149
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_62
    iget v5, v4, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    iget v10, v3, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    add-int/2addr v5, v10

    iput v5, v4, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    .line 153
    iget v5, v4, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    iget v10, v3, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    add-int/2addr v5, v10

    iput v5, v4, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    .line 156
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7c

    new-instance v5, Landroid/support/v7/util/DiffUtil$Range;

    invoke-direct {v5}, Landroid/support/v7/util/DiffUtil$Range;-><init>()V

    goto :goto_88

    .line 157
    :cond_7c
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 156
    invoke-interface {v6, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/util/DiffUtil$Range;

    .line 158
    .local v5, "left":Landroid/support/v7/util/DiffUtil$Range;
    :goto_88
    iget v10, v3, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    iput v10, v5, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    .line 159
    iget v10, v3, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    iput v10, v5, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    .line 160
    iget-boolean v10, v4, Landroid/support/v7/util/DiffUtil$Snake;->reverse:Z

    if-eqz v10, :cond_9d

    .line 161
    iget v10, v4, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    iput v10, v5, Landroid/support/v7/util/DiffUtil$Range;->oldListEnd:I

    .line 162
    iget v10, v4, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    iput v10, v5, Landroid/support/v7/util/DiffUtil$Range;->newListEnd:I

    goto :goto_b6

    .line 164
    :cond_9d
    iget-boolean v10, v4, Landroid/support/v7/util/DiffUtil$Snake;->removal:Z

    if-eqz v10, :cond_ac

    .line 165
    iget v10, v4, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    add-int/lit8 v10, v10, -0x1

    iput v10, v5, Landroid/support/v7/util/DiffUtil$Range;->oldListEnd:I

    .line 166
    iget v10, v4, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    iput v10, v5, Landroid/support/v7/util/DiffUtil$Range;->newListEnd:I

    goto :goto_b6

    .line 168
    :cond_ac
    iget v10, v4, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    iput v10, v5, Landroid/support/v7/util/DiffUtil$Range;->oldListEnd:I

    .line 169
    iget v10, v4, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    add-int/lit8 v10, v10, -0x1

    iput v10, v5, Landroid/support/v7/util/DiffUtil$Range;->newListEnd:I

    .line 172
    :goto_b6
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    move-object v10, v3

    .line 177
    .local v10, "right":Landroid/support/v7/util/DiffUtil$Range;
    iget-boolean v11, v4, Landroid/support/v7/util/DiffUtil$Snake;->reverse:Z

    if-eqz v11, :cond_e4

    .line 178
    iget-boolean v11, v4, Landroid/support/v7/util/DiffUtil$Snake;->removal:Z

    if-eqz v11, :cond_d3

    .line 179
    iget v11, v4, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    iget v12, v4, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int/2addr v11, v12

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    .line 180
    iget v11, v4, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    iget v12, v4, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    goto :goto_f2

    .line 182
    :cond_d3
    iget v11, v4, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    iget v12, v4, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    .line 183
    iget v11, v4, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    iget v12, v4, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int/2addr v11, v12

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    goto :goto_f2

    .line 186
    :cond_e4
    iget v11, v4, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    iget v12, v4, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    .line 187
    iget v11, v4, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    iget v12, v4, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    .line 189
    :goto_f2
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    .end local v5    # "left":Landroid/support/v7/util/DiffUtil$Range;
    .end local v10    # "right":Landroid/support/v7/util/DiffUtil$Range;
    goto :goto_f9

    .line 191
    :cond_f6
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    .end local v3    # "range":Landroid/support/v7/util/DiffUtil$Range;
    .end local v4    # "snake":Landroid/support/v7/util/DiffUtil$Snake;
    :goto_f9
    nop

    .line 142
    move-object v3, v6

    goto/16 :goto_33

    .line 196
    :cond_fd
    sget-object v3, Landroid/support/v7/util/DiffUtil;->SNAKE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 198
    new-instance v10, Landroid/support/v7/util/DiffUtil$DiffResult;

    move-object v3, v10

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v11, v6

    .end local v6    # "rangePool":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$Range;>;"
    .local v11, "rangePool":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$Range;>;"
    move-object v6, v8

    move-object v12, v7

    .end local v7    # "backward":[I
    .local v12, "backward":[I
    move-object v13, v8

    .end local v8    # "forward":[I
    .local v13, "forward":[I
    move/from16 v8, p1

    invoke-direct/range {v3 .. v8}, Landroid/support/v7/util/DiffUtil$DiffResult;-><init>(Landroid/support/v7/util/DiffUtil$Callback;Ljava/util/List;[I[IZ)V

    return-object v10
.end method

.method private static diffPartial(Landroid/support/v7/util/DiffUtil$Callback;IIII[I[II)Landroid/support/v7/util/DiffUtil$Snake;
    .registers 28
    .param p0, "cb"    # Landroid/support/v7/util/DiffUtil$Callback;
    .param p1, "startOld"    # I
    .param p2, "endOld"    # I
    .param p3, "startNew"    # I
    .param p4, "endNew"    # I
    .param p5, "forward"    # [I
    .param p6, "backward"    # [I
    .param p7, "kOffset"    # I

    .line 204
    move-object/from16 v0, p0

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    sub-int v6, p2, p1

    .line 205
    .local v6, "oldSize":I
    sub-int v7, p4, p3

    .line 207
    .local v7, "newSize":I
    sub-int v8, p2, p1

    const/4 v9, 0x1

    if-lt v8, v9, :cond_17c

    sub-int v8, p4, p3

    if-ge v8, v9, :cond_19

    .line 208
    move/from16 v18, v6

    move/from16 v19, v7

    goto/16 :goto_180

    .line 211
    :cond_19
    sub-int v8, v6, v7

    .line 212
    .local v8, "delta":I
    add-int v10, v6, v7

    add-int/2addr v10, v9

    div-int/lit8 v10, v10, 0x2

    .line 213
    .local v10, "dLimit":I
    sub-int v11, p7, v10

    sub-int/2addr v11, v9

    add-int v12, p7, v10

    add-int/2addr v12, v9

    const/4 v13, 0x0

    invoke-static {v4, v11, v12, v13}, Ljava/util/Arrays;->fill([IIII)V

    .line 214
    sub-int v11, p7, v10

    sub-int/2addr v11, v9

    add-int/2addr v11, v8

    add-int v12, p7, v10

    add-int/2addr v12, v9

    add-int/2addr v12, v8

    invoke-static {v5, v11, v12, v6}, Ljava/util/Arrays;->fill([IIII)V

    .line 215
    rem-int/lit8 v11, v8, 0x2

    if-eqz v11, :cond_3b

    const/4 v11, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v11, 0x0

    .line 216
    .local v11, "checkInFwd":Z
    :goto_3c
    const/4 v12, 0x0

    .local v12, "d":I
    :goto_3d
    if-gt v12, v10, :cond_170

    .line 217
    neg-int v13, v12

    .local v13, "k":I
    :goto_40
    if-gt v13, v12, :cond_d9

    .line 222
    neg-int v9, v12

    if-eq v13, v9, :cond_5f

    if-eq v13, v12, :cond_56

    add-int v9, p7, v13

    const/4 v15, 0x1

    sub-int/2addr v9, v15

    aget v9, v4, v9

    add-int v16, p7, v13

    add-int/lit8 v16, v16, 0x1

    aget v2, v4, v16

    if-ge v9, v2, :cond_57

    goto :goto_60

    .line 226
    :cond_56
    const/4 v15, 0x1

    :cond_57
    add-int v2, p7, v13

    sub-int/2addr v2, v15

    aget v2, v4, v2

    add-int/2addr v2, v15

    .line 227
    .local v2, "x":I
    const/4 v9, 0x1

    goto :goto_66

    .line 223
    .end local v2    # "x":I
    :cond_5f
    const/4 v15, 0x1

    :goto_60
    add-int v2, p7, v13

    add-int/2addr v2, v15

    aget v2, v4, v2

    .line 224
    .restart local v2    # "x":I
    const/4 v9, 0x0

    .line 227
    .local v9, "removal":Z
    :goto_66
    nop

    .line 230
    sub-int v16, v2, v13

    .local v16, "y":I
    :goto_69
    move/from16 v17, v16

    .line 232
    .end local v16    # "y":I
    .local v17, "y":I
    if-ge v2, v6, :cond_8d

    move/from16 v3, v17

    .end local v17    # "y":I
    .local v3, "y":I
    if-ge v3, v7, :cond_88

    move/from16 v18, v6

    .end local v6    # "oldSize":I
    .local v18, "oldSize":I
    add-int v6, p1, v2

    move/from16 v19, v7

    .end local v7    # "newSize":I
    .local v19, "newSize":I
    add-int v7, p3, v3

    .line 233
    invoke-virtual {v0, v6, v7}, Landroid/support/v7/util/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v6

    if-eqz v6, :cond_93

    .line 234
    add-int/lit8 v2, v2, 0x1

    .line 235
    add-int/lit8 v16, v3, 0x1

    .line 230
    move/from16 v6, v18

    move/from16 v7, v19

    goto :goto_69

    .line 237
    .end local v18    # "oldSize":I
    .end local v19    # "newSize":I
    .restart local v6    # "oldSize":I
    .restart local v7    # "newSize":I
    :cond_88
    move/from16 v18, v6

    move/from16 v19, v7

    .end local v6    # "oldSize":I
    .end local v7    # "newSize":I
    .restart local v18    # "oldSize":I
    .restart local v19    # "newSize":I
    goto :goto_93

    .end local v3    # "y":I
    .end local v18    # "oldSize":I
    .end local v19    # "newSize":I
    .restart local v6    # "oldSize":I
    .restart local v7    # "newSize":I
    .restart local v17    # "y":I
    :cond_8d
    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v3, v17

    .end local v6    # "oldSize":I
    .end local v7    # "newSize":I
    .end local v17    # "y":I
    .restart local v3    # "y":I
    .restart local v18    # "oldSize":I
    .restart local v19    # "newSize":I
    :cond_93
    :goto_93
    add-int v6, p7, v13

    aput v2, v4, v6

    .line 238
    if-eqz v11, :cond_cf

    sub-int v6, v8, v12

    const/4 v7, 0x1

    add-int/2addr v6, v7

    if-lt v13, v6, :cond_cf

    add-int v6, v8, v12

    sub-int/2addr v6, v7

    if-gt v13, v6, :cond_cf

    .line 239
    add-int v6, p7, v13

    aget v6, v4, v6

    add-int v7, p7, v13

    aget v7, v5, v7

    if-lt v6, v7, :cond_cf

    .line 240
    new-instance v6, Landroid/support/v7/util/DiffUtil$Snake;

    invoke-direct {v6}, Landroid/support/v7/util/DiffUtil$Snake;-><init>()V

    .line 241
    .local v6, "outSnake":Landroid/support/v7/util/DiffUtil$Snake;
    add-int v7, p7, v13

    aget v7, v5, v7

    iput v7, v6, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    .line 242
    iget v7, v6, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    sub-int/2addr v7, v13

    iput v7, v6, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    .line 243
    add-int v7, p7, v13

    aget v7, v4, v7

    add-int v15, p7, v13

    aget v15, v5, v15

    sub-int/2addr v7, v15

    iput v7, v6, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    .line 244
    iput-boolean v9, v6, Landroid/support/v7/util/DiffUtil$Snake;->removal:Z

    .line 245
    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v7/util/DiffUtil$Snake;->reverse:Z

    .line 246
    return-object v6

    .line 217
    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v6    # "outSnake":Landroid/support/v7/util/DiffUtil$Snake;
    .end local v9    # "removal":Z
    :cond_cf
    const/4 v7, 0x0

    add-int/lit8 v13, v13, 0x2

    move/from16 v6, v18

    move/from16 v7, v19

    const/4 v9, 0x1

    goto/16 :goto_40

    .line 250
    .end local v13    # "k":I
    .end local v18    # "oldSize":I
    .end local v19    # "newSize":I
    .local v6, "oldSize":I
    .restart local v7    # "newSize":I
    :cond_d9
    move/from16 v18, v6

    move/from16 v19, v7

    const/4 v7, 0x0

    .end local v6    # "oldSize":I
    .end local v7    # "newSize":I
    .restart local v18    # "oldSize":I
    .restart local v19    # "newSize":I
    neg-int v2, v12

    .local v2, "k":I
    :goto_df
    if-gt v2, v12, :cond_165

    .line 252
    add-int v3, v2, v8

    .line 255
    .local v3, "backwardK":I
    add-int v6, v12, v8

    if-eq v3, v6, :cond_102

    neg-int v6, v12

    add-int/2addr v6, v8

    if-eq v3, v6, :cond_f9

    add-int v6, p7, v3

    const/4 v15, 0x1

    sub-int/2addr v6, v15

    aget v6, v5, v6

    add-int v9, p7, v3

    add-int/2addr v9, v15

    aget v9, v5, v9

    if-ge v6, v9, :cond_fa

    goto :goto_103

    .line 260
    :cond_f9
    const/4 v15, 0x1

    :cond_fa
    add-int v6, p7, v3

    add-int/2addr v6, v15

    aget v6, v5, v6

    sub-int/2addr v6, v15

    .line 261
    .local v6, "x":I
    const/4 v9, 0x1

    goto :goto_109

    .line 257
    .end local v6    # "x":I
    :cond_102
    const/4 v15, 0x1

    :goto_103
    add-int v6, p7, v3

    sub-int/2addr v6, v15

    aget v6, v5, v6

    .line 258
    .restart local v6    # "x":I
    const/4 v9, 0x0

    .line 261
    .restart local v9    # "removal":Z
    :goto_109
    nop

    .line 265
    sub-int v13, v6, v3

    .line 267
    .local v13, "y":I
    :goto_10c
    if-lez v6, :cond_125

    if-lez v13, :cond_125

    add-int v14, p1, v6

    const/4 v15, 0x1

    add-int/lit8 v7, v14, -0x1

    add-int v14, p3, v13

    add-int/lit8 v1, v14, -0x1

    .line 268
    invoke-virtual {v0, v7, v1}, Landroid/support/v7/util/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v1

    if-eqz v1, :cond_125

    .line 269
    add-int/lit8 v6, v6, -0x1

    .line 270
    add-int/lit8 v13, v13, -0x1

    .line 265
    const/4 v7, 0x0

    goto :goto_10c

    .line 272
    :cond_125
    add-int v1, p7, v3

    aput v6, v5, v1

    .line 273
    if-nez v11, :cond_15f

    add-int v1, v2, v8

    neg-int v7, v12

    if-lt v1, v7, :cond_15f

    add-int v1, v2, v8

    if-gt v1, v12, :cond_15f

    .line 274
    add-int v1, p7, v3

    aget v1, v4, v1

    add-int v7, p7, v3

    aget v7, v5, v7

    if-lt v1, v7, :cond_15f

    .line 275
    new-instance v1, Landroid/support/v7/util/DiffUtil$Snake;

    invoke-direct {v1}, Landroid/support/v7/util/DiffUtil$Snake;-><init>()V

    .line 276
    .local v1, "outSnake":Landroid/support/v7/util/DiffUtil$Snake;
    add-int v7, p7, v3

    aget v7, v5, v7

    iput v7, v1, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    .line 277
    iget v7, v1, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    sub-int/2addr v7, v3

    iput v7, v1, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    .line 278
    add-int v7, p7, v3

    aget v7, v4, v7

    add-int v14, p7, v3

    aget v14, v5, v14

    sub-int/2addr v7, v14

    iput v7, v1, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    .line 280
    iput-boolean v9, v1, Landroid/support/v7/util/DiffUtil$Snake;->removal:Z

    .line 281
    const/4 v7, 0x1

    iput-boolean v7, v1, Landroid/support/v7/util/DiffUtil$Snake;->reverse:Z

    .line 282
    return-object v1

    .line 250
    .end local v1    # "outSnake":Landroid/support/v7/util/DiffUtil$Snake;
    .end local v3    # "backwardK":I
    .end local v6    # "x":I
    .end local v9    # "removal":Z
    .end local v13    # "y":I
    :cond_15f
    const/4 v7, 0x1

    add-int/lit8 v2, v2, 0x2

    const/4 v7, 0x0

    goto/16 :goto_df

    .line 216
    .end local v2    # "k":I
    :cond_165
    const/4 v7, 0x1

    add-int/lit8 v12, v12, 0x1

    move/from16 v6, v18

    move/from16 v7, v19

    const/4 v9, 0x1

    const/4 v13, 0x0

    goto/16 :goto_3d

    .line 287
    .end local v12    # "d":I
    .end local v18    # "oldSize":I
    .end local v19    # "newSize":I
    .local v6, "oldSize":I
    .restart local v7    # "newSize":I
    :cond_170
    move/from16 v18, v6

    move/from16 v19, v7

    .end local v6    # "oldSize":I
    .end local v7    # "newSize":I
    .restart local v18    # "oldSize":I
    .restart local v19    # "newSize":I
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "DiffUtil hit an unexpected case while trying to calculate the optimal path. Please make sure your data is not changing during the diff calculation."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 208
    .end local v8    # "delta":I
    .end local v10    # "dLimit":I
    .end local v11    # "checkInFwd":Z
    .end local v18    # "oldSize":I
    .end local v19    # "newSize":I
    .restart local v6    # "oldSize":I
    .restart local v7    # "newSize":I
    :cond_17c
    move/from16 v18, v6

    move/from16 v19, v7

    .end local v6    # "oldSize":I
    .end local v7    # "newSize":I
    .restart local v18    # "oldSize":I
    .restart local v19    # "newSize":I
    :goto_180
    const/4 v1, 0x0

    return-object v1
.end method
