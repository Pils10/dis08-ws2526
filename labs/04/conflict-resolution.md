# Conflict Resolution Documentation

## Conflict Description

A merge conflict occurred in this document due to two branches modifying the same section with different text.

**Conflict markers encountered:**
```text
<<<<<<< HEAD
Of cause, this document is conflicting.
=======
This is a deliberate conflict
>>>>>>> deliberate-conflict
````

* `HEAD` contained the statement that the document is conflicting.
* The `deliberate-conflict` branch explicitly stated that the conflict was intentional.

## Resolution Approach

The conflict was resolved by:

* Acknowledging both intentions.
* Merging the semantic meaning of both statements into a single, clear sentence.
* Removing all Git conflict markers to restore valid Markdown.

## Final Outcome

The resolved text clearly communicates that the conflict was intentional and is no longer unresolved.

**Resolved content:**

```text
Of cause, this document is deliberately conflicting.
```

The merge was completed successfully with no remaining conflicts.
For easier visulaization, conflict.md was used instead of a direct bio conflict that didn't happen at first because git noticed different lines where changed and merged them flawlessly, as it should.